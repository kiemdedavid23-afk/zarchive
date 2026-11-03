package p039p0;

import android.util.Xml;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p033m0.C0181d;

/* JADX INFO: renamed from: p0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0225c {

    /* JADX INFO: renamed from: p0.c$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public String f1270a;

        /* JADX INFO: renamed from: b */
        public String f1271b;

        /* JADX INFO: renamed from: c */
        public String f1272c;
    }

    /* JADX INFO: renamed from: a */
    public static a m637a(InputStream inputStream) {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        a aVar = null;
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                if ("meta.xml".equals(nextEntry.getName())) {
                    if (aVar == null) {
                        aVar = new a();
                    }
                    m639c(zipInputStream, aVar);
                    break;
                }
                if ("docProps/app.xml".equals(nextEntry.getName()) || "docProps/core.xml".equals(nextEntry.getName())) {
                    if (aVar == null) {
                        aVar = new a();
                    }
                    m638b(zipInputStream, aVar);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                C0181d.m563d(zipInputStream);
                throw th;
            }
        }
        C0181d.m563d(zipInputStream);
        return aVar;
    }

    /* JADX INFO: renamed from: b */
    public static void m638b(ZipInputStream zipInputStream, a aVar) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        xmlPullParserNewPullParser.setInput(zipInputStream, null);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
            if (xmlPullParserNewPullParser.getEventType() == 3) {
                if (xmlPullParserNewPullParser.getName().equalsIgnoreCase("coreProperties")) {
                    return;
                }
            } else if (xmlPullParserNewPullParser.getEventType() == 2) {
                String name = xmlPullParserNewPullParser.getName();
                if (("creator".equalsIgnoreCase(name) && aVar.f1270a == null) || "lastModifiedBy".equalsIgnoreCase(name)) {
                    z3 = false;
                    z4 = false;
                    z2 = true;
                } else if ("Pages".equalsIgnoreCase(name)) {
                    z2 = false;
                    z4 = false;
                    z3 = true;
                } else {
                    z2 = false;
                    z3 = false;
                    z4 = "title".equalsIgnoreCase(name);
                }
            } else if (xmlPullParserNewPullParser.getEventType() == 4) {
                if (z2) {
                    aVar.f1270a = xmlPullParserNewPullParser.getText();
                } else if (z3) {
                    aVar.f1272c = xmlPullParserNewPullParser.getText();
                } else if (z4) {
                    aVar.f1271b = xmlPullParserNewPullParser.getText();
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m639c(ZipInputStream zipInputStream, a aVar) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        xmlPullParserNewPullParser.setInput(zipInputStream, null);
        boolean z2 = false;
        boolean z3 = false;
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
            if (xmlPullParserNewPullParser.getEventType() == 3) {
                if (xmlPullParserNewPullParser.getName().equalsIgnoreCase("meta")) {
                    return;
                }
            } else if (xmlPullParserNewPullParser.getEventType() == 2) {
                String name = xmlPullParserNewPullParser.getName();
                if (("initial-creator".equalsIgnoreCase(name) && aVar.f1270a == null) || "creator".equalsIgnoreCase(name)) {
                    z3 = false;
                    z2 = true;
                } else if ("title".equalsIgnoreCase(name)) {
                    z2 = false;
                    z3 = true;
                } else {
                    if ("document-statistic".equalsIgnoreCase(name)) {
                        int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            if ("page-count".equals(xmlPullParserNewPullParser.getAttributeName(i2))) {
                                aVar.f1272c = xmlPullParserNewPullParser.getAttributeValue(i2);
                                break;
                            }
                        }
                    }
                    z2 = false;
                    z3 = false;
                }
            } else if (xmlPullParserNewPullParser.getEventType() == 4) {
                if (z2) {
                    aVar.f1270a = xmlPullParserNewPullParser.getText();
                } else if (z3) {
                    aVar.f1271b = xmlPullParserNewPullParser.getText();
                }
            }
        }
    }
}
