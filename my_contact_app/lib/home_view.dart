import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_contact_app/contact_details_view.dart';
import 'package:my_contact_app/contact_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> data = [
    {
      "name": "Kirestin Ratliff",
      "phone": "1-864-544-5587",
      "email": "taciti.sociosqu@google.com",
      "country": "Nigeria",
      "region": "Los Lagos"
    },
    {
      "name": "Bethany Duke",
      "phone": "1-528-495-4847",
      "email": "a.tortor.nunc@hotmail.edu",
      "country": "Pakistan",
      "region": "Osun"
    },
    {
      "name": "Brian Fuentes",
      "phone": "(648) 828-3161",
      "email": "ut.dolor@yahoo.edu",
      "country": "Russian Federation",
      "region": "Niedersachsen"
    },
    {
      "name": "Bernard Holden",
      "phone": "1-357-112-4211",
      "email": "luctus.felis@outlook.ca",
      "country": "Turkey",
      "region": "South Australia"
    },
    {
      "name": "Dieter Greene",
      "phone": "1-858-762-8335",
      "email": "tempor.diam@hotmail.edu",
      "country": "Brazil",
      "region": "Sindh"
    },
    {
      "name": "Kareem Hogan",
      "phone": "1-452-108-4730",
      "email": "nisi.magna@outlook.couk",
      "country": "Brazil",
      "region": "California"
    },
    {
      "name": "Sarah Durham",
      "phone": "1-611-368-8761",
      "email": "malesuada.fringilla@google.couk",
      "country": "India",
      "region": "Nagaland"
    },
    {
      "name": "Jamal Peters",
      "phone": "1-274-319-7675",
      "email": "egestas.blandit.nam@icloud.ca",
      "country": "Indonesia",
      "region": "Cusco"
    },
    {
      "name": "Isaiah Harrell",
      "phone": "1-874-328-3342",
      "email": "lacus.cras@protonmail.org",
      "country": "Canada",
      "region": "West-Vlaanderen"
    },
    {
      "name": "Kuame Lawson",
      "phone": "1-537-760-7468",
      "email": "risus.nulla.eget@icloud.net",
      "country": "Mexico",
      "region": "Nunavut"
    },
    {
      "name": "Galena Mejia",
      "phone": "1-731-254-2016",
      "email": "felis.donec@hotmail.couk",
      "country": "Poland",
      "region": "Principado de Asturias"
    },
    {
      "name": "Jeremy Hoover",
      "phone": "1-741-494-1320",
      "email": "fusce.diam@protonmail.org",
      "country": "Russian Federation",
      "region": "łódzkie"
    },
    {
      "name": "Cassidy Sherman",
      "phone": "1-172-843-5462",
      "email": "sollicitudin.adipiscing@aol.com",
      "country": "Italy",
      "region": "Dolnośląskie"
    },
    {
      "name": "Lionel Baird",
      "phone": "1-689-908-3195",
      "email": "at.egestas.a@protonmail.com",
      "country": "Nigeria",
      "region": "Los Lagos"
    },
    {
      "name": "Abigail Sweet",
      "phone": "1-767-238-7737",
      "email": "auctor.ullamcorper.nisl@aol.ca",
      "country": "Chile",
      "region": "Santander"
    },
    {
      "name": "Adena Tyson",
      "phone": "1-683-884-6637",
      "email": "mauris.integer@hotmail.org",
      "country": "Australia",
      "region": "Puntarenas"
    },
    {
      "name": "Imelda Bentley",
      "phone": "(565) 346-2442",
      "email": "eu.tellus.phasellus@yahoo.org",
      "country": "Spain",
      "region": "Canarias"
    },
    {
      "name": "Paloma Graves",
      "phone": "1-916-885-5396",
      "email": "imperdiet.ullamcorper@protonmail.org",
      "country": "United States",
      "region": "Biobío"
    },
    {
      "name": "Marah Mcleod",
      "phone": "1-940-315-5826",
      "email": "eleifend.non.dapibus@icloud.edu",
      "country": "Germany",
      "region": "Western Australia"
    },
    {
      "name": "Kimberley Stout",
      "phone": "1-926-533-3317",
      "email": "etiam@outlook.couk",
      "country": "Germany",
      "region": "Santa Catarina"
    },
    {
      "name": "Colt Evans",
      "phone": "(641) 743-4567",
      "email": "quisque.ac@yahoo.ca",
      "country": "Ireland",
      "region": "Jigawa"
    },
    {
      "name": "Aretha Park",
      "phone": "(653) 927-3615",
      "email": "ante.bibendum@google.com",
      "country": "Poland",
      "region": "Odisha"
    },
    {
      "name": "Willa Carroll",
      "phone": "1-357-867-6842",
      "email": "habitant.morbi@icloud.couk",
      "country": "France",
      "region": "Khyber Pakhtoonkhwa"
    },
    {
      "name": "Zelenia Tillman",
      "phone": "(346) 512-7253",
      "email": "praesent.luctus@icloud.edu",
      "country": "Canada",
      "region": "Maryland"
    },
    {
      "name": "Grady Mckinney",
      "phone": "(377) 675-6413",
      "email": "velit.sed@protonmail.ca",
      "country": "Canada",
      "region": "Balıkesir"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: false,
            title: const Text(
              'My Contacts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Center(
                    child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/vision.jpg'),
                )),
              )
            ],
            elevation: 1,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Search by name or number",
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
            )),
        body: SafeArea(
          child: ListView(
            controller: _scrollController,
            //padding: const EdgeInsets.all(16),
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListView.separated(
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {

                          return ContactDetailsView(
                            contact: Contact(
                                name: 'Donna Paulsen',
                                phone: '+233 24 623 4178',
                                email: 'donnapaulsen@gmail.com',
                                country: 'Ghana',
                                region: 'Greater Accra'),
                          );
                        }));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/contact_icon.png'),
                      ),
                      title: const Text(
                        'Donna Paulsen',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Text('+233 24 623 4178'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      indent: 25,
                      thickness: 2,
                    );
                  },
                  itemCount: 3),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Contacts',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              GroupedListView<Map<String, String>, String>(
                shrinkWrap: true,
                elements: data,
                groupBy: (element) =>
                    element['name'].toString().substring(0, 1),
                groupSeparatorBuilder: (String groupByValue) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      groupByValue.substring(0, 1),
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                ),
                itemBuilder: (context, Map<String, String> element) {
                  Contact contact = Contact.fromJson(element);
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ContactDetailsView(
                              contact: contact,
                            );
                          }));
                        },
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/contact_icon.png'),
                        ),
                        title: Text(
                          '${element['name']}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text('${element['phone']}'),
                        trailing: const IconButton(
                            onPressed: null, icon: Icon(Icons.more_horiz)),
                      ),
                      const Divider(
                        indent: 25,
                        thickness: 2,
                      )
                    ],
                  );
                },
                itemComparator: (item1, item2) =>
                    item1['name']!.compareTo(item2['name']!), // optional
                useStickyGroupSeparators: true, // optional
                floatingHeader: true, // optional
                order: GroupedListOrder.ASC, // optional
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff1A4ADA),
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
