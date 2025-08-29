import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlockWebviewSubmitScreen extends StatefulWidget {
  final String phoneNo;
  const BlockWebviewSubmitScreen({super.key, required this.phoneNo});

  @override
  State<BlockWebviewSubmitScreen> createState() =>
      _BlockWebviewSubmitScreenState();
}

class _BlockWebviewSubmitScreenState extends State<BlockWebviewSubmitScreen> {
  late final WebViewController controller;

  final String initUrl = 'https://aduannomor.id/cek-nomor-seluler';
  // final String initUrl = 'https://room-pwa.vercel.app/#/en/home';

  String currentUrl = "";

  bool loaded = false;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setUserAgent(
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/120.0.0.0 Safari/537.36",
      )
      ..setJavaScriptMode(
        JavaScriptMode.unrestricted,
      ) // wajib untuk React/Vue SPA
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              currentUrl = url;
            });
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (url) {
            setState(() {
              currentUrl = url;
              loaded = true;
            });
            debugPrint('Page finished loading: $url');

            if (url == initUrl) {
              if (widget.phoneNo.trim().isNotEmpty) {
                String phoneNo = widget.phoneNo.trim().replaceFirst(
                  RegExp(r'^(?:\+62|62|0)'),
                  '8',
                );

                Future.delayed(const Duration(milliseconds: 500), () {
                  controller.runJavaScript("""
                // Cari semua input dan pilih berdasarkan placeholder
                const phoneInput = document.querySelectorAll('input');
                let targetInput = null;
                phoneInput.forEach(i => {
                  if(i.placeholder && i.placeholder.includes('Contoh:')) {
                    targetInput = i;
                  }
                });

                if(targetInput) {
                  // Fokus seperti user klik
                  targetInput.focus();

                  // Isi satu huruf agar SPA mendeteksi input
                  targetInput.value = '$phoneNo';

                  // Trigger event agar Vue/React update state dan button enable
                  targetInput.dispatchEvent(new Event('input', { bubbles: true }));
                  targetInput.dispatchEvent(new Event('change', { bubbles: true }));
                  targetInput.dispatchEvent(new KeyboardEvent('keydown', { bubbles: true, key: '0' }));
                  targetInput.dispatchEvent(new KeyboardEvent('keyup', { bubbles: true, key: '0' }));
                }

                // Cari semua button
                const buttons = document.querySelectorAll('button.button');
                let targetBtn = null;

                buttons.forEach(btn => {
                  if(btn.textContent.trim() === 'Periksa') {
                    targetBtn = btn;
                  }
                });

                if(targetBtn) {
                  // Jika button disabled, coba aktifkan dulu (opsional, untuk testing)
                  if(targetBtn.disabled) {
                    targetBtn.disabled = false;
                  }

                  // Klik button
                  targetBtn.click();
                }
              """);
                });
              }
            }
          },
          onNavigationRequest: (request) {
            debugPrint('Trying to navigate to: ${request.url}');
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(initUrl));
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      childPad: false,
      header: FHeader.nested(
        title: const Text('Block : Webview Submit'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              context.pop();
            },
          ),
        ],
      ),
      child: loaded
          ? WebViewWidget(controller: controller)
          : Expanded(child: Center(child: FProgress.circularIcon())),
    );
  }
}
