package p006b1;

import android.text.Editable;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.SurroundingText;
import ru.zdevs.zarchiver.p045ui.editor.C0339b;
import ru.zdevs.zarchiver.p045ui.editor.EditableView;

/* JADX INFO: renamed from: b1.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0031b extends BaseInputConnection {

    /* JADX INFO: renamed from: a */
    public final C0339b f220a;

    /* JADX INFO: renamed from: b */
    public final EditableView f221b;

    /* JADX INFO: renamed from: c */
    public int f222c;

    public C0031b(EditableView editableView, C0339b c0339b) {
        super(editableView, true);
        this.f220a = c0339b;
        this.f221b = editableView;
        this.f222c = 0;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean beginBatchEdit() {
        synchronized (this) {
            int i2 = this.f222c;
            if (i2 < 0) {
                return false;
            }
            C0339b c0339b = this.f220a;
            c0339b.f1802e = true;
            c0339b.f1803f = 0;
            this.f222c = i2 + 1;
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean clearMetaKeyStates(int i2) {
        EditableView editableView = this.f221b;
        try {
            editableView.getKeyListener().clearMetaKeyState(editableView, this.f220a, i2);
            return true;
        } catch (AbstractMethodError unused) {
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean endBatchEdit() {
        synchronized (this) {
            if (this.f222c <= 0) {
                return false;
            }
            C0339b c0339b = this.f220a;
            c0339b.f1802e = false;
            int i2 = c0339b.f1803f;
            if (i2 != 0) {
                ((EditableView) c0339b.f1798a).m949m(i2);
                c0339b.f1803f = 0;
            }
            int i3 = this.f222c - 1;
            this.f222c = i3;
            return i3 > 0;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public final Editable getEditable() {
        return this.f220a;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final CharSequence getSelectedText(int i2) {
        return super.getSelectedText(i2 | 1);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final SurroundingText getSurroundingText(int i2, int i3, int i4) {
        return super.getSurroundingText(i2, i3, i4 | 1);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final CharSequence getTextAfterCursor(int i2, int i3) {
        if (i2 < 0) {
            return null;
        }
        return this.f220a.m971i(i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final CharSequence getTextBeforeCursor(int i2, int i3) {
        if (i2 < 0) {
            return null;
        }
        return this.f220a.m971i(-i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean performContextMenuAction(int i2) {
        return this.f221b.m950n(i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean reportFullscreenMode(boolean z2) {
        return !z2;
    }
}
