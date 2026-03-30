# Keep javax.xml.stream (Fix for R8 missing XMLStreamException)
-keep class javax.xml.stream.** { *; }
-dontwarn javax.xml.stream.**

# Keep Apache Tika
-keep class org.apache.tika.** { *; }
-dontwarn org.apache.tika.**

