package ru.zdevs.zarchiver.p045ui.editor;

import android.icu.text.BreakIterator;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.a */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0338a {

    /* JADX INFO: renamed from: a */
    public final C0339b.b f1795a = new C0339b.b();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.a$a */
    public static class a extends AbstractC0338a {

        /* JADX INFO: renamed from: b */
        public final BreakIterator f1796b = BreakIterator.getWordInstance();

        @Override // ru.zdevs.zarchiver.p045ui.editor.AbstractC0338a
        /* JADX INFO: renamed from: a */
        public final int mo959a() {
            return this.f1796b.first();
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.AbstractC0338a
        /* JADX INFO: renamed from: b */
        public final int mo960b() {
            return this.f1796b.next();
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.AbstractC0338a
        /* JADX INFO: renamed from: c */
        public final void mo961c(C0339b.b bVar) {
            this.f1796b.setText(bVar);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.a$b */
    public static class b extends AbstractC0338a {

        /* JADX INFO: renamed from: b */
        public final java.text.BreakIterator f1797b = java.text.BreakIterator.getWordInstance();

        @Override // ru.zdevs.zarchiver.p045ui.editor.AbstractC0338a
        /* JADX INFO: renamed from: a */
        public final int mo959a() {
            return this.f1797b.first();
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.AbstractC0338a
        /* JADX INFO: renamed from: b */
        public final int mo960b() {
            return this.f1797b.next();
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.AbstractC0338a
        /* JADX INFO: renamed from: c */
        public final void mo961c(C0339b.b bVar) {
            this.f1797b.setText(bVar);
        }
    }

    /* JADX INFO: renamed from: a */
    public abstract int mo959a();

    /* JADX INFO: renamed from: b */
    public abstract int mo960b();

    /* JADX INFO: renamed from: c */
    public abstract void mo961c(C0339b.b bVar);
}
