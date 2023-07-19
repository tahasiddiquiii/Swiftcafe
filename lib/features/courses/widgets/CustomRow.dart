import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool checked;
  final ValueChanged<bool> onChanged;

  const CustomCheckbox({
    required this.checked,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!checked);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: checked ? Colors.green : Colors.transparent,
          border: Border.all(
            color: checked ? Colors.transparent : Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: checked
            ? Center(
                child: Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 18,
                ),
              )
            : null,
      ),
    );
  }
}

class CustomRow extends StatefulWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 25),
        CustomCheckbox(
          checked: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value;
            });
          },
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          'High Priority',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(236, 220, 216, 216),
          ),
        ),
        const SizedBox(width: 5),
        Image.asset(
          'assets/images/error.png',
        ),
        const Spacer(),
        Container(
          width: 135,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.shade700, Colors.green.shade500],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: () {
              // Implement the logic for the button click
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 25),
      ],
    );
  }
}
