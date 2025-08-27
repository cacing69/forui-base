import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: Text("Mini Apps"),
        // suffixes: [
        //   FHeaderAction(
        //     icon: Icon(FIcons.logOut),
        //     onPress: () => context.goNamed(RouteName.login.name),
        //   ),
        // ],
      ),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.appCctv.name);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: BoxBorder.all(
                  color: context.theme.colors.border,
                  width: context.theme.style.borderWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 90,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            "https://images.unsplash.com/photo-1713427508471-1611d7c9193e?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Gap(3),
                  Text("CCTV", style: TextStyle(fontWeight: FontWeight.bold)),
                  Gap(2),
                  Text(
                    "Security camera surveillance",
                    style: context.theme.typography.xs,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
