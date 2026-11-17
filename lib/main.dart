import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://axcbkxmkbzeeppsafclo.supabase.co',
    publishableKey: 'sb_publishable_cD0kFBjzSlcXutbdfYzkUQ_QfDk0AcI',
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Supabase Connected'))),
    );
  }
}
