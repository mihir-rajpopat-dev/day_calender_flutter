import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class HtmlEditorViewWidget extends StatelessWidget {
  HtmlEditorController controller;

  HtmlEditorViewWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return HtmlEditor(
      controller: controller,
      callbacks: Callbacks(onInit: () {
        controller.setFullScreen();
      }),
      htmlEditorOptions: HtmlEditorOptions(
        shouldEnsureVisible: false,
        androidUseHybridComposition: false,
      ),
      htmlToolbarOptions: HtmlToolbarOptions(
          // toolbarItemHeight: 48,

          gridViewHorizontalSpacing: 5,
          gridViewVerticalSpacing: 0,
          buttonFillColor: const Color(0xFF908880).withOpacity(0.2),
          buttonColor: const Color(0xFF908880),
          buttonSelectedColor: const Color(0xFF908880),
          buttonHighlightColor: const Color(0xFF908880).withOpacity(0.2),
          separatorWidget: const VerticalDivider(color: Colors.red, width: 1, thickness: 6),
          dropdownBoxDecoration: BoxDecoration(color: const Color(0xFF908880).withOpacity(0.2)),
          // renderBorder: true,

          textStyle: const TextStyle(fontSize: 14, color: Color(0xFF908880)),
          defaultToolbarButtons: [
            // FontSettingButtons(fontSizeUnit: false),
            const FontButtons(clearAll: false, strikethrough: true, superscript: false, subscript: false),
            const ColorButtons(),
            const FontSettingButtons(
              fontSizeUnit: false,
              fontName: false,
            ),
            const ParagraphButtons(
              alignCenter: true,
              alignJustify: false,
              alignLeft: true,
              alignRight: true,
              caseConverter: false,
              decreaseIndent: false,
              increaseIndent: false,
              lineHeight: false,
              textDirection: false,
            ),
            const ListButtons(listStyles: false),

            const OtherButtons(
              fullscreen: false,
              codeview: true,
              undo: false,
              redo: false,
              help: false,
              copy: false,
              paste: false,
            ),
            // ParagraphButtons(textDirection: false, lineHeight: false, caseConverter: false),
            const InsertButtons(video: false, audio: false, table: false, hr: false, otherFile: false),
            const StyleButtons(),
          ],
          toolbarType: ToolbarType.nativeGrid),
      otherOptions: OtherOptions(
          height: 400,
          decoration:
              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5), border: Border.all(color: Color(0xFF908880), width: 1)
                  // color: Colors.red
                  )),
    );
  }
}
