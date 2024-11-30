import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:admin/di/app_components.dart';
import 'package:admin/data/models/auth_part1_dto.dart';
import 'package:admin/data/models/auth_part2_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  bool _isCodeSent = false;
  bool _isLoading = false;

  Future<void> _authPart1() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final repository = AppComponents().tableRepository;
      final dto = AuthPart1Dto(email: _emailController.text.trim());
      await repository.authPart1(dto);
      setState(() {
        _isCodeSent = true;
      });
    } catch (e) {
      _showError('Ошибка отправки кода: укажите существующую почту');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _authPart2() async {
    final SharedPreferences sharedPref = AppComponents().sharedPreferences;
    setState(() {
      _isLoading = true;
    });

    try {
      final repository = AppComponents().tableRepository;
      final dto = AuthPart2Dto(
        email: _emailController.text.trim(),
        code: _codeController.text.trim(),
      );
      await repository.authPart2(dto);
      sharedPref.setBool('logIn', true);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    } catch (e) {
      _showError('Ошибка аутентификации: неверный код');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showError(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ошибка'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Закрыть'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Аутентификация')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              enabled: !_isCodeSent,
            ),
            const SizedBox(height: 16),
            if (_isCodeSent)
              TextField(
                controller: _codeController,
                decoration: const InputDecoration(
                  labelText: 'Код подтверждения',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isLoading
                  ? null
                  : _isCodeSent
                      ? _authPart2
                      : _authPart1,
              child: _isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text(_isCodeSent ? 'Войти' : 'Отправить код'),
            ),
          ],
        ),
      ),
    );
  }
}
