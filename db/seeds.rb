# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Musical.create ([
                { title: 'Little Shop of Horrors', synopsis: 'An alien plant convinces a mild-mannered florist to feed it people.', release_year:  1982 }, 
	            { title: 'Beauty and the Beast', synopsis: 'Stage adaptation of the Disney movie by the same name.' , release_year: 1994 }
                ])

Creator.create ([
    { name: 'Howard Ashman', bio: 'Howard was a musical writer, lyricist, and producer. After success in New York alongside Alan Menkin, he and Menkin started working for Disney and effectively saved the animation studio.' },
    { name: 'Alan Menkin', bio: 'Alan is a composer. After success in New York alongside Howard Ashman, he started working for Disney, where he has created some of the most famous Disney songs.' },
    { name: 'Tim Rice', bio: 'He’s a lyricist that writes a lot of Disney.' }, 
    { name: 'Linda Woolverton', bio: 'She’s a writer.' }
    ])
    
    Book.create([
    { musical: Musical.find_by_title('Little Shop of Horrors'), creator: Creator.find_by_name('Howard Ashman') },
    { musical: Musical.find_by_title('Little Shop of Horrors'), creator: Creator.find_by_name('Alan Menkin') },
    { musical: Musical.find_by_title('Beauty and the Beast'), creator: Creator.find_by_name('Alan Menkin') },
    { musical: Musical.find_by_title('Beauty and the Beast'), creator: Creator.find_by_name('Howard Ashman') },
    { musical: Musical.find_by_title('Beauty and the Beast'), creator: Creator.find_by_name('Tim Rice') },
    { musical: Musical.find_by_title('Beauty and the Beast'), creator: Creator.find_by_name('Linda Woolverton') }
    ])
    
    Song.create ([
    { song_title: 'Prologue', track_no: 1, musical: Musical.find_by_title('Little Shop of Horrors') },
    { song_title: 'Skid Row (Downtown)', track_no: 2, musical: Musical.find_by_title('Little Shop of Horrors') },
    { song_title: 'Prologue (The Enchantress)', track_no: 1, musical: Musical.find_by_title('Beauty and the Beast') },
    { song_title: 'Belle', track_no: 2, musical: Musical.find_by_title('Beauty and the Beast') }, 
    { song_title: 'No Matter What', track_no: 3, musical: Musical.find_by_title('Beauty and the Beast') }
    ])
    