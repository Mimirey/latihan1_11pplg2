import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class Inputform extends StatelessWidget {
  final bool isNumber;
  final String input;
  final TextEditingController controller;
  final bool isShow;
  const Inputform({super.key, required this.input, required this.controller, required this.isShow, required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
        controller: controller,
        textAlign: TextAlign.center,
        obscureText: isShow,
        decoration: InputDecoration(
          labelText: input,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
      ),
    );
  }
}

class GenderPick extends StatelessWidget {
  final String label;
  final List<String> items;
  final String? selectedGender;
  final Function(String?) onChanged;

  const GenderPick({super.key, required this.label, required this.items, this.selectedGender, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold),),

          DropdownButtonFormField<String>(
            value: items.contains(selectedGender)? selectedGender : null,
          
            items: items.map((item){
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item)
                );
            }).toList(),
           onChanged: onChanged),
        ],
      ),
    );
  }
}

class DatePicker extends StatefulWidget {
  final String label;
  final DateTime? selectedDate;
  final void Function(DateTime?) onDateSelected;
  const DatePicker({super.key, required this.label, this.selectedDate, required this.onDateSelected});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late TextEditingController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = TextEditingController(
      text:  widget.selectedDate != null
      ? DateFormat('dd MMM yyyy'). format(widget.selectedDate!)
      :'',
    );
  }

  @override
  void didUpdateWidget(covariant DatePicker oldWidget){
    super.didUpdateWidget(oldWidget);

    if (widget.selectedDate != oldWidget.selectedDate){
      _controller.text = widget.selectedDate !=null
      ? DateFormat('dd MMM yyyy').format(widget.selectedDate!)
      :'';
    }
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime now= DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: widget.selectedDate ?? DateTime(2000),
      firstDate: DateTime(1990), 
      lastDate: now
    );

    if(picked !=null){
      _controller.text=DateFormat('dd MMM yyyy').format(picked);
      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: TextStyle(fontWeight: FontWeight.bold),),

        GestureDetector(
          onTap: () => _pickDate(context),
          child: AbsorbPointer(
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Pilih Tanggal',
                border: OutlineInputBorder()
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}

class Button extends StatelessWidget {
  String buttonName;
  final VoidCallback pressed;
  Button({super.key, required this.buttonName, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: pressed,
         child: Text(buttonName)),
    );
  }
}