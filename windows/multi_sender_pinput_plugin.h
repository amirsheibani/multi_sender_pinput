#ifndef FLUTTER_PLUGIN_MULTI_SENDER_PINPUT_PLUGIN_H_
#define FLUTTER_PLUGIN_MULTI_SENDER_PINPUT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace multi_sender_pinput {

class MultiSenderPinputPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MultiSenderPinputPlugin();

  virtual ~MultiSenderPinputPlugin();

  // Disallow copy and assign.
  MultiSenderPinputPlugin(const MultiSenderPinputPlugin&) = delete;
  MultiSenderPinputPlugin& operator=(const MultiSenderPinputPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace multi_sender_pinput

#endif  // FLUTTER_PLUGIN_MULTI_SENDER_PINPUT_PLUGIN_H_
