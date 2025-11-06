import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'العزلة الاجتماعية',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tajawal',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18.0, height: 1.5),
          bodyMedium: TextStyle(fontSize: 16.0, height: 1.4),
          headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),
          titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SocialIsolationPage(),
    );
  }
}

class SocialIsolationPage extends StatelessWidget {
  const SocialIsolationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'العزلة الاجتماعية لدى الطالب الجامعي',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[700],
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSection(
                  context,
                  'ما هي العزلة الاجتماعية؟',
                  'هي حالة من الانفصال ونقص التواصل الهادف مع الآخرين. لا تتعلق العزلة الاجتماعية بعدد الأصدقاء لديك، بل تتعلق بالشعور بالوحدة والانفصال عن المحيط، وهي مشكلة شائعة بشكل خاص بين طلاب الجامعات الذين ينتقلون إلى بيئة جديدة.',
                  'https://picsum.photos/seed/1/600/400',
                ),
                _buildSection(
                  context,
                  'أسباب العزلة لدى الطالب الجامعي',
                  '1.  **الانتقال لبيئة جديدة:** البعد عن الأهل والأصدقاء القدامى.\n'
                  '2.  **الضغط الدراسي:** الانشغال بالدراسة والواجبات قد يقلل من فرص التواصل.\n'
                  '3.  **صعوبة تكوين صداقات:** الخجل أو القلق الاجتماعي قد يمنع الطالب من المبادرة.\n'
                  '4.  **وسائل التواصل الاجتماعي:** قد تخلق شعوراً بالمقارنة والوحدة بدلاً من التواصل الحقيقي.\n'
                  '5.  **مشاكل شخصية:** مثل المشاكل المادية أو العائلية التي تزيد من عزلة الطالب.',
                  'https://picsum.photos/seed/2/600/400',
                ),
                _buildSection(
                  context,
                  'الآثار السلبية للعزلة الاجتماعية',
                  'يمكن أن تؤثر العزلة سلبًا على الصحة النفسية والجسدية للطالب، مما يؤدي إلى:\n'
                  '-   **زيادة القلق والاكتئاب:** الشعور بالوحدة المستمرة يفاقم من المشاعر السلبية.\n'
                  '-   **تراجع الأداء الأكاديمي:** صعوبة التركيز وانخفاض الدافعية للدراسة.\n'
                  '-   **ضعف جهاز المناعة:** أظهرت الدراسات أن العزلة يمكن أن تضعف قدرة الجسم على مقاومة الأمراض.\n'
                  '-   **مشاكل في النوم:** الأرق أو النوم المفرط.',
                  'https://picsum.photos/seed/3/600/400',
                ),
                _buildSection(
                  context,
                  'طرق التغلب على العزلة',
                  '1.  **المشاركة في الأنشطة الطلابية:** انضم إلى الأندية والفرق التي تثير اهتمامك.\n'
                  '2.  **التطوع:** وسيلة رائعة لمقابلة أشخاص جدد والشعور بالانتماء.\n'
                  '3.  **المبادرة بالحديث:** ابدأ محادثات بسيطة مع زملائك في الفصل.\n'
                  '4.  **استخدام التكنولوجيا بإيجابية:** استخدم التطبيقات للتواصل مع الأصدقاء والعائلة وتنظيم لقاءات.\n'
                  '5.  **طلب المساعدة:** لا تتردد في التحدث إلى مرشد نفسي في الجامعة.',
                  'https://picsum.photos/seed/4/600/400',
                ),
                 _buildSection(
                  context,
                  'نصائح لبناء علاقات اجتماعية صحية',
                  '-   **كن على طبيعتك:** لا تحاول أن تكون شخصًا آخر لإثارة إعجاب الناس.\n'
                  '-   **أظهر الاهتمام بالآخرين:** استمع جيدًا عندما يتحدثون واطرح أسئلة.\n'
                  '-   **شارك اهتماماتك:** تحدث عن هواياتك وما تحب، فهذا يفتح أبوابًا للنقاش.\n'
                  '-   **كن إيجابيًا ومنفتحًا:** الابتسامة والود يجذبان الناس إليك.\n'
                  '-   **الصبر:** بناء الصداقات الحقيقية يستغرق وقتًا، فلا تستسلم.',
                  'https://picsum.photos/seed/5/600/400',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content, String imageUrl) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, progress) {
              return progress == null ? child : const Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, size: 50, color: Colors.red);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 12.0),
                Text(
                  content,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
