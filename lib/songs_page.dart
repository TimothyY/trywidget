import 'package:flutter/material.dart';
import 'package:trywidget/song.dart';

class SongsPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SongsPageState();
  }

}

class SongsPageState extends State<SongsPage>{

  List<Song> songs = [];

  @override
  void initState() {
    super.initState();

    //populate array of user defined data structure
    songs.add(Song("lagu1","artis1"));
    songs.add(Song("lagu2","artis1"));
    songs.add(Song("lagu3","artis1"));
    songs.add(Song("lagu4","artis1"));
    songs.add(Song("lagu5","artis1"));
    songs.add(Song("lagu6","artis2"));
    songs.add(Song("lagu7","artis2"));
    songs.add(Song("lagu8","artis2"));
    songs.add(Song("lagu9","artis2"));
    songs.add(Song("lagu10","artis2"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Songs"),),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: songs.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text(songs[index].songTitle!),
                    subtitle: Text(songs[index].songArtist!),
                  );

                }
            ),
          ),
        ],
      ),
    );
  }

}