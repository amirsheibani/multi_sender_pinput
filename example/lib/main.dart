import 'package:flutter/material.dart';
import 'package:multi_sender_pinput/multi_sender_pinput/pinput.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Pinput Example'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(30, 60, 87, 1),
          ),
        ),
        body: const FractionallySizedBox(
          widthFactor: 1,
          child: PinputExample(),
        ),
      ),
    ),
  );
}

/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class PinputExample extends StatefulWidget {
  const PinputExample({Key? key}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              defaultPinTheme: defaultPinTheme,
              scrollPadding: const EdgeInsets.all(56),
              focusNode: FocusNode(),
              autofocus: true,
              closeKeyboardWhenCompleted: false,
              // readOnly:true,
              autofillHints: const [AutofillHints.oneTimeCode],
              controller: pinController,
              length: 6,
              androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              senderPhoneNumber: const ['+989385371961', '+989398216784', '+989122331488'],
              textInputAction: TextInputAction.done,
              showCursor: false,
              keyboardType: TextInputType.number,
              animationCurve: Curves.ease,
              animationDuration: const Duration(milliseconds: 300),
              pinAnimationType: PinAnimationType.slide,
              smsPermissionStatus: (value) {
                debugPrint('Sms Permission Status: $value');
              },
              showSimpleTextField: true,
              readFromSms: true,
              onChanged: (value) {
                  print('onChanged: $value');
              },
              onCompleted: (value) {
                print('onCompleted: $value');
              },
              autoFillValidation: (line) {
                return (line.contains('رمز') || line.contains('بلیت') || line.contains('بليت')) &&
                    !line.contains('زمان');
              },
            ),
          ),
          TextButton(
            onPressed: () {
              focusNode.unfocus();
              formKey.currentState!.validate();
            },
            child: const Text('Validate'),
          ),
        ],
      ),
    );
  }
}
