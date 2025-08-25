import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:gap/gap.dart';

class CAutocomplete<T extends Object> extends HookWidget {
  // Kembali ke HookWidget
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final String hintText;
  final Widget? label;
  final String? Function(T)? displayStringForOption;
  final Future<Iterable<T>> Function(TextEditingValue query) optionsBuilder;
  final void Function(T)? onSelected;
  final Widget? description;
  final Widget Function(
    BuildContext context,
    T option,
    void Function(T) onSelected,
  )?
  optionItemBuilder;
  final Widget? Function(BuildContext context)? emptyResultBuilder;
  final Widget? Function(BuildContext context)? loadingBuilder;

  // Tambahkan properti isLoading di sini
  final bool isLoading;

  const CAutocomplete({
    super.key,
    this.textEditingController,
    this.focusNode,
    this.hintText = "Search...",
    this.label,
    this.displayStringForOption,
    required this.optionsBuilder,
    this.onSelected,
    this.description,
    this.optionItemBuilder,
    this.emptyResultBuilder,
    this.loadingBuilder,
    required this.isLoading, // Pastikan ini wajib diisi
  });

  @override
  Widget build(BuildContext context) {
    final localController = textEditingController ?? useTextEditingController();
    final localFocusNode = focusNode ?? useFocusNode();

    return Autocomplete<T>(
      textEditingController: localController,
      focusNode: localFocusNode,
      displayStringForOption: (option) =>
          displayStringForOption?.call(option) ?? option.toString(),
      optionsBuilder: optionsBuilder,
      fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
        return FTextField(
          label: label,
          controller: controller,
          description: description,
          clearable: (e) => e.text.isNotEmpty,
          focusNode: focusNode,
          onSubmit: (value) => onFieldSubmitted(),
          hint: hintText,
        );
      },
      onSelected: onSelected,
      optionsViewBuilder: (context, onSelected, options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              const Gap(5),
              Material(
                elevation: 0,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: context.theme.colors.border,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 450),
                  child: Builder(
                    builder: (context) {
                      if (isLoading) {
                        return loadingBuilder?.call(context) ??
                            const Center(child: CircularProgressIndicator());
                      }

                      return ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: options.length,
                        itemBuilder: (context, index) {
                          final option = options.elementAt(index);
                          return optionItemBuilder!(context, option, (
                            selected,
                          ) {
                            onSelected(selected);
                          });
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
