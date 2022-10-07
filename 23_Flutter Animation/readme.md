# (23) Flutter Navigation
---
## Summary

### Animation
• Animasi membuat aplikasi terlihat hidup
• Widget yang bergerak menambah daya tarik
• Pergerakan dari kondisi A ke kondisi B
### Implicit Animation

##### Tanpa Animation

<img src="https://lh4.googleusercontent.com/OgyCtKXQL37X83ooifs-3FpB4EPLoEvcg0qySiyDSIw0wWAMWURVggQES1TcyGtJMfGp9lccgEb86BD78QJWboaJwhmvlt9NwA3hmKy1o4OUDp9EiT37aHTey6EcRfcVfxaevm0sKOCDN53JhHvVNDxwiqFaF6RoS1iztHk_Rq9ec2KcZCuHXFp7lzBW">

<img src="https://lh6.googleusercontent.com/keowX7hAQxkQulfh29Vj_tmHSJz06YU7YlnhP9mYGIfm6MztkiJ2MSY_21_Vyq0nSwIhbjoOFaOM5VHqv62y_HbwGJ7WuZG_zxuE4Nd0jgmL8DMt-4PLOGMwsZipFXKQHHDNQvBMwxzNIB6rsV1o3koyyYTZlfFNrHPXeE8FJa59MVD0ow4SZe1zfrNA">

##### Dengan Animation
<img src="https://lh6.googleusercontent.com/DdU6H92-onZaKW2eWENKbiy3fp0h0acDO50CG7sAuMBqiijdQt1-JdVYB8dUZL22kAy46DPMAY2BEu6yEZg8JTBtA-i86jyP-PYhtEaXQ5uNz1yHRzDCYVV0_P8euy7bo-9VMB3dSkJwKjwTzOkozlh7g2m54ZX2YYDCDrlkeL3_pYnphWSakb7s8iB5">
<img src="https://lh6.googleusercontent.com/N2PiJMI2aqkBZiByIK1Qrs1cfDBDSUb87_hyRM7O8YC-OWTni1rikQ6hvvybdHij5AMbENVNHnbFdiOnGA9zO1aBFKV3cDrJfCh9wFUIL89Ayspli7o7oL-pczQYs81ba0-KwjYbMQI8lQ4HmfGocbK66t1pBc0aplN74tc_54jwOKbfw1arngd3kvKX">

### Transition
- Animasi yang terjadi saat perpindahan halaman
- Ditulis pada Navigator.push()

##### Melakukan transition

<img src='https://lh4.googleusercontent.com/fjd6PR_49xXZZojf1kCj1botryDacqvtYWwafQMNOYlk8WLR5KNdZOQGyXcfIhwtUsJ5FAA1m4p6NX3_ENivNP5H1liZx7ReKDgFr_dS2drxQ8X0bZZxKsIwbeUjjwdIIsucSH-dw5kE2NRGuqjtYP9sOOycczjZibVrIdejHhxM6wrV9zt3cHsZeQas'>
<img src='https://lh6.googleusercontent.com/lj5pEgCdJbSfQWoVqIN84OsZNH-HJlx_FWJxECYGZTBr5tRbuleSqYFQuJ8NrYIUsfnkmRyoPYJdMIfyQSxwcHeiosPXlfOpln2qOUd0HgSV74HLQNoDv5Vf8ydhKBAzFcYhtuIyuQZnjyZ2RSBSgFqViVAgF_60rIEqWTRQgdVSP6IoBNrrrfQrF-Xm'>

### Transition Umum

#### FadeTransition
- Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh


#### ScaleTransition
- Halaman muncul dengan efek berubah ukuran dari tidak penuh menuju full screen