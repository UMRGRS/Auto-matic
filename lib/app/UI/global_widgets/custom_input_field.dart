import 'package:auto_matic/app/config/config.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatefulWidget {
  final void Function(String)? onChanged;
  final String label;
  final TextInputType? inputType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final int? maxLength;
  final AutovalidateMode mode;
  const CustomInputField({
    super.key,
    this.onChanged,
    required this.label,
    this.inputType,
    this.isPassword = false,
    this.validator,
    this.maxLength,
    this.mode = AutovalidateMode.onUserInteraction,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
        validator: widget.validator,
        autovalidateMode: widget.mode,
        builder: (state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                keyboardType: widget.inputType,
                obscureText: _obscureText,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(widget.maxLength),
                ],
                onChanged: (text) {
                  if (widget.validator != null) {
                    state.setValue(text);
                    state.validate();
                  }
                  if (widget.onChanged != null) {
                    widget.onChanged!(text);
                  }
                },
                decoration: InputDecoration(
                  labelText: widget.label,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: widget.isPassword
                      ? CupertinoButton(
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 18,
                          ),
                          onPressed: () {
                            _obscureText = !_obscureText;
                            setState(() {});
                          },
                        )
                      : null,
                ),
              ),
              if (state.hasError)
                Text(
                  state.errorText!,
                  style: const TextStyle(color: Colors.redAccent),
                ),
            ],
          );
        });
  }
}
