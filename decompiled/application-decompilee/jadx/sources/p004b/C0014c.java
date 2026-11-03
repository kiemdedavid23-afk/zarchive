package p004b;

import android.util.Base64;
import android.util.Xml;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: renamed from: b.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0014c {

    /* JADX INFO: renamed from: a */
    public Object f109a;

    /* JADX INFO: renamed from: b */
    public Object f110b;

    /* JADX INFO: renamed from: c */
    public Object f111c;

    /* JADX INFO: renamed from: d */
    public Object f112d;

    /* JADX INFO: renamed from: e */
    public Object f113e;

    public C0014c(int i2) {
        if (i2 != 1) {
            this.f109a = new C0017f();
            this.f110b = new C0017f();
            this.f111c = new C0017f();
            this.f112d = new C0017f();
            this.f113e = new C0018g[32];
        }
    }

    /* JADX INFO: renamed from: a */
    public final String m37a(int i2) {
        String strSubstring = "";
        if (i2 == 0) {
            if (((String) this.f109a) == null && ((String) this.f110b) == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            Object obj = this.f109a;
            sb.append(((String) obj) == null ? "" : (String) obj);
            sb.append(" ");
            Object obj2 = this.f110b;
            sb.append(((String) obj2) != null ? (String) obj2 : "");
            return sb.toString();
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return (String) this.f111c;
            }
            if (i2 != 3) {
                return null;
            }
            return (String) this.f112d;
        }
        if (((String) this.f109a) == null && ((String) this.f110b) == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Object obj3 = this.f110b;
        sb2.append(((String) obj3) == null ? "" : (String) obj3);
        sb2.append(" ");
        Object obj4 = this.f109a;
        if (((String) obj4) != null && !((String) obj4).isEmpty()) {
            strSubstring = ((String) this.f109a).substring(0, 1);
        }
        sb2.append(strSubstring);
        return sb2.toString();
    }

    /* JADX INFO: renamed from: b */
    public final void m38b(InputStream inputStream, String str, boolean z2) {
        boolean z3;
        boolean z4;
        boolean zEquals;
        boolean z5;
        boolean z6;
        this.f112d = null;
        this.f111c = null;
        this.f110b = null;
        this.f109a = null;
        this.f113e = null;
        int i2 = 3;
        try {
            if ("fb2".equals(str)) {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                xmlPullParserNewPullParser.setInput(inputStream, null);
                int eventType = xmlPullParserNewPullParser.getEventType();
                String attributeValue = null;
                boolean z7 = false;
                boolean z8 = false;
                boolean z9 = false;
                boolean z10 = false;
                boolean z11 = false;
                boolean z12 = false;
                boolean z13 = false;
                for (int i3 = 1; eventType != i3; i3 = 1) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (name != null) {
                        name = name.toLowerCase();
                    }
                    boolean z14 = z7;
                    if (xmlPullParserNewPullParser.getEventType() != i2) {
                        if (xmlPullParserNewPullParser.getEventType() == 2) {
                            if (!z8) {
                                if ("title-info".equals(name)) {
                                    z8 = true;
                                    zEquals = z14;
                                } else if ("binary".equals(name) && attributeValue != null) {
                                    zEquals = attributeValue.equals(xmlPullParserNewPullParser.getAttributeValue(null, "id"));
                                }
                                z5 = zEquals;
                                z6 = false;
                            } else if (!z9) {
                                if ("image".equals(name)) {
                                    attributeValue = xmlPullParserNewPullParser.getAttributeValue(0);
                                    if (attributeValue != null) {
                                        attributeValue = attributeValue.substring(1);
                                    }
                                } else if ("book-title".equals(name)) {
                                    z10 = true;
                                } else if ("author".equals(name)) {
                                    z9 = true;
                                } else if ("genre".equals(name)) {
                                    z13 = true;
                                }
                                zEquals = z14;
                                z5 = zEquals;
                                z6 = false;
                            } else if ("first-name".equals(name)) {
                                z5 = z14;
                                z6 = false;
                                z11 = true;
                            } else if ("last-name".equals(name)) {
                                z5 = z14;
                                z6 = false;
                                z12 = true;
                            }
                        } else if (xmlPullParserNewPullParser.getEventType() == 4) {
                            if (z10) {
                                this.f111c = xmlPullParserNewPullParser.getText();
                                z5 = z14;
                                z6 = false;
                                z10 = false;
                            } else if (z11) {
                                this.f109a = xmlPullParserNewPullParser.getText();
                            } else if (z12) {
                                this.f110b = xmlPullParserNewPullParser.getText();
                            } else if (z13) {
                                String text = xmlPullParserNewPullParser.getText();
                                if (text.startsWith("sf")) {
                                    this.f112d = "Science Fiction & Fantasy";
                                } else if (text.startsWith("det") || text.startsWith("thriller")) {
                                    this.f112d = "Detectives & Thrillers";
                                } else if (text.startsWith("prose")) {
                                    this.f112d = "Prose";
                                } else if (text.startsWith("love")) {
                                    this.f112d = "Romance";
                                } else if (text.startsWith("adv")) {
                                    this.f112d = "Adventure";
                                } else if (text.startsWith("child")) {
                                    this.f112d = "Children's";
                                } else if (text.startsWith("antique")) {
                                    this.f112d = "Antique literature";
                                } else if (text.startsWith("sci")) {
                                    this.f112d = "Scientific-educational";
                                } else if (text.startsWith("comp")) {
                                    this.f112d = "Computers & Internet";
                                } else if (text.startsWith("ref")) {
                                    this.f112d = "Reference";
                                } else if (text.startsWith("nonf")) {
                                    this.f112d = "Nonfiction";
                                } else if (text.startsWith("religion")) {
                                    this.f112d = "Religion & Inspiration";
                                } else if (text.startsWith("humor")) {
                                    this.f112d = "Humor";
                                } else if (text.startsWith("home")) {
                                    this.f112d = "Home & Family";
                                } else {
                                    this.f112d = text;
                                }
                            } else if (z14) {
                                this.f113e = Base64.decode(xmlPullParserNewPullParser.getText(), 0);
                                return;
                            }
                        }
                        z6 = false;
                        z5 = z14;
                    } else {
                        if ("title-info".equals(name)) {
                            if (z2 && attributeValue != null) {
                                z5 = z14;
                                z6 = false;
                                z8 = false;
                            }
                            return;
                        }
                        if ("author".equals(name)) {
                            z5 = z14;
                            z6 = false;
                            z9 = false;
                        } else if (name != null && name.contains("-name")) {
                            z5 = z14;
                            z6 = false;
                            z11 = false;
                            z12 = false;
                        } else if ("book-title".equals(name)) {
                            z5 = z14;
                            z6 = false;
                            z10 = false;
                        } else if ("binary".equals(name)) {
                            z6 = false;
                            z5 = false;
                        } else if ("genre".equals(name)) {
                            zEquals = z14;
                            z13 = false;
                            z5 = zEquals;
                            z6 = false;
                        } else {
                            z6 = false;
                            z5 = z14;
                        }
                    }
                    eventType = xmlPullParserNewPullParser.next();
                    z7 = z5;
                    i2 = 3;
                }
                return;
            }
            boolean z15 = false;
            if (!"epub".equals(str)) {
                return;
            }
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            boolean z16 = false;
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    return;
                }
                String lowerCase = nextEntry.getName().toLowerCase();
                if (lowerCase.endsWith(".opf")) {
                    XmlPullParser xmlPullParserNewPullParser2 = Xml.newPullParser();
                    xmlPullParserNewPullParser2.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                    xmlPullParserNewPullParser2.setInput(zipInputStream, null);
                    boolean z17 = z15;
                    boolean z18 = z17;
                    boolean z19 = z18;
                    for (int eventType2 = xmlPullParserNewPullParser2.getEventType(); eventType2 != 1; eventType2 = xmlPullParserNewPullParser2.next()) {
                        String name2 = xmlPullParserNewPullParser2.getName();
                        if (name2 != null) {
                            name2 = name2.toLowerCase();
                        }
                        if (xmlPullParserNewPullParser2.getEventType() == 3) {
                            if ("metadata".equals(name2)) {
                                break;
                            }
                        } else {
                            if (xmlPullParserNewPullParser2.getEventType() == 2) {
                                if (z17) {
                                    if ("title".equals(name2)) {
                                        z4 = z15;
                                        z3 = true;
                                    } else if ("creator".equals(name2)) {
                                        z3 = z15;
                                        z4 = true;
                                    }
                                } else if ("metadata".equals(name2)) {
                                    z3 = z15;
                                    z4 = z3;
                                    z17 = true;
                                }
                                z19 = z4;
                                z18 = z3;
                            } else if (xmlPullParserNewPullParser2.getEventType() == 4) {
                                if (z18) {
                                    this.f111c = xmlPullParserNewPullParser2.getText();
                                } else if (z19) {
                                    this.f110b = xmlPullParserNewPullParser2.getText();
                                }
                            }
                        }
                        z3 = z15;
                        z4 = z3;
                        z19 = z4;
                        z18 = z3;
                    }
                    if (z2 && ((byte[]) this.f113e) == null) {
                        z16 = true;
                    }
                    return;
                }
                if (((byte[]) this.f113e) == null && z2 && (("cover.jpg".equals(lowerCase) || "cover.jpeg".equals(lowerCase)) && nextEntry.getSize() < 819200)) {
                    this.f113e = new byte[(int) nextEntry.getSize()];
                    int i4 = 0;
                    do {
                        Object obj = this.f113e;
                        int i5 = zipInputStream.read((byte[]) obj, i4, ((byte[]) obj).length - i4);
                        if (i5 < 0) {
                            break;
                        } else {
                            i4 += i5;
                        }
                    } while (i4 < ((byte[]) this.f113e).length);
                    if (z16) {
                        return;
                    }
                }
                z15 = false;
            }
        } catch (Exception unused) {
        }
    }
}
