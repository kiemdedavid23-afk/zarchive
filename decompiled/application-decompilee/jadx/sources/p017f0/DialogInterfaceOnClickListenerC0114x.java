package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Locale;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p025i0.C0150c;
import p035n0.AbstractC0194a;
import p047s0.C0358b;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.x */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0114x extends AbstractC0099i implements DialogInterface.OnClickListener, CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: m */
    public static final int[] f834m;

    /* JADX INFO: renamed from: n */
    public static final int[] f835n;

    /* JADX INFO: renamed from: o */
    public static final int[] f836o;

    /* JADX INFO: renamed from: p */
    public static final int[][] f837p;

    /* JADX INFO: renamed from: g */
    public AlertDialog f838g;

    /* JADX INFO: renamed from: h */
    public final C0129h[] f839h;

    /* JADX INFO: renamed from: i */
    public final String[] f840i;

    /* JADX INFO: renamed from: j */
    public boolean f841j;

    /* JADX INFO: renamed from: k */
    public c f842k;

    /* JADX INFO: renamed from: l */
    public c f843l;

    /* JADX INFO: renamed from: f0.x$a */
    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            DialogInterfaceOnClickListenerC0114x.m382r(DialogInterfaceOnClickListenerC0114x.this);
        }
    }

    /* JADX INFO: renamed from: f0.x$b */
    public class b implements DialogInterface.OnShowListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            DialogInterfaceOnClickListenerC0114x dialogInterfaceOnClickListenerC0114x = DialogInterfaceOnClickListenerC0114x.this;
            AlertDialog alertDialog = dialogInterfaceOnClickListenerC0114x.f838g;
            dialogInterfaceOnClickListenerC0114x.f841j = true;
            DialogInterfaceOnClickListenerC0114x.m382r(dialogInterfaceOnClickListenerC0114x);
        }
    }

    /* JADX INFO: renamed from: f0.x$c */
    public static class c {

        /* JADX INFO: renamed from: a */
        public int f846a = 0;

        /* JADX INFO: renamed from: b */
        public int f847b = 0;

        /* JADX INFO: renamed from: c */
        public int f848c = -1;

        /* JADX INFO: renamed from: d */
        public int f849d = -1;
    }

    static {
        int[] iArr = {R.id.cbUserX, R.id.cbUserW, R.id.cbUserR};
        f834m = iArr;
        int[] iArr2 = {R.id.cbGroupX, R.id.cbGroupW, R.id.cbGroupR};
        f835n = iArr2;
        int[] iArr3 = {R.id.cbOtherX, R.id.cbOtherW, R.id.cbOtherR};
        f836o = iArr3;
        f837p = new int[][]{iArr, iArr2, iArr3};
    }

    public DialogInterfaceOnClickListenerC0114x(C0307d c0307d, Context context, C0129h c0129h, String[] strArr) {
        this.f742f = c0307d;
        this.f839h = new C0129h[]{c0129h};
        this.f840i = (String[]) strArr.clone();
        m385u();
        m383s(context);
        m355a();
    }

    /* JADX INFO: renamed from: r */
    public static void m382r(DialogInterfaceOnClickListenerC0114x dialogInterfaceOnClickListenerC0114x) {
        if (dialogInterfaceOnClickListenerC0114x.f838g == null || !dialogInterfaceOnClickListenerC0114x.f841j) {
            return;
        }
        dialogInterfaceOnClickListenerC0114x.f841j = false;
        int[] iArr = f834m;
        for (int i2 = 0; i2 < 3; i2++) {
            ((CheckBox) dialogInterfaceOnClickListenerC0114x.f838g.findViewById(iArr[i2])).setChecked(false);
        }
        int[] iArr2 = f835n;
        for (int i3 = 0; i3 < 3; i3++) {
            ((CheckBox) dialogInterfaceOnClickListenerC0114x.f838g.findViewById(iArr2[i3])).setChecked(false);
        }
        int[] iArr3 = f836o;
        for (int i4 = 0; i4 < 3; i4++) {
            ((CheckBox) dialogInterfaceOnClickListenerC0114x.f838g.findViewById(iArr3[i4])).setChecked(false);
        }
        EditText editText = (EditText) dialogInterfaceOnClickListenerC0114x.f838g.findViewById(R.id.etPermissions);
        String string = editText.getText().toString();
        if (string.contains("8") || string.contains("9")) {
            int selectionStart = editText.getSelectionStart();
            string = string.replace('8', '7').replace('9', '7');
            editText.setText(string);
            editText.setSelection(selectionStart, selectionStart);
        }
        try {
            int i5 = Integer.parseInt(string);
            for (int i6 = 0; i6 < 3; i6++) {
                int i7 = i5 % 10;
                i5 /= 10;
                int i8 = 0;
                for (int i9 = 1; i9 <= 4; i9 <<= 1) {
                    if ((i7 & i9) == i9) {
                        ((CheckBox) dialogInterfaceOnClickListenerC0114x.f838g.findViewById(f837p[2 - i6][i8])).setChecked(true);
                    }
                    i8++;
                }
            }
            dialogInterfaceOnClickListenerC0114x.m386v();
            dialogInterfaceOnClickListenerC0114x.f841j = true;
        } catch (Exception unused) {
            dialogInterfaceOnClickListenerC0114x.f841j = true;
        }
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f838g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f838g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 16;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        if (this.f838g == null || !this.f841j) {
            return;
        }
        this.f841j = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= 3) {
                ((EditText) this.f838g.findViewById(R.id.etPermissions)).setText(String.format(Locale.getDefault(), "%1$03d", Integer.valueOf(i3)));
                m386v();
                this.f841j = true;
                return;
            }
            int i4 = 0;
            for (int i5 = 1; i5 <= 4; i5 <<= 1) {
                if (((CheckBox) this.f838g.findViewById(f837p[i2][i4])).isChecked()) {
                    i3 += i5;
                }
                i4++;
            }
            if (i2 != 2) {
                i3 *= 10;
            }
            i2++;
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractC0099i.b bVar;
        AbstractC0099i.c cVar;
        AlertDialog alertDialog = this.f838g;
        if (alertDialog != null) {
            try {
                this.f842k.f847b = Integer.parseInt(((EditText) alertDialog.findViewById(R.id.etPermissions)).getText().toString());
            } catch (Exception unused) {
            }
            try {
                this.f842k.f848c = Integer.parseInt(((EditText) this.f838g.findViewById(R.id.etUid)).getText().toString());
            } catch (Exception unused2) {
            }
            try {
                this.f842k.f849d = Integer.parseInt(((EditText) this.f838g.findViewById(R.id.etGid)).getText().toString());
            } catch (Exception unused3) {
            }
        }
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    /* JADX INFO: renamed from: s */
    public final void m383s(Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.SPD_TTL_PERMISSIONS);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_permissions, (ViewGroup) null, false);
        builder.setView(viewInflate);
        int[] iArr = f834m;
        for (int i2 = 0; i2 < 3; i2++) {
            ((CheckBox) viewInflate.findViewById(iArr[i2])).setOnCheckedChangeListener(this);
        }
        int[] iArr2 = f835n;
        for (int i3 = 0; i3 < 3; i3++) {
            ((CheckBox) viewInflate.findViewById(iArr2[i3])).setOnCheckedChangeListener(this);
        }
        int[] iArr3 = f836o;
        for (int i4 = 0; i4 < 3; i4++) {
            ((CheckBox) viewInflate.findViewById(iArr3[i4])).setOnCheckedChangeListener(this);
        }
        EditText editText = (EditText) viewInflate.findViewById(R.id.etPermissions);
        editText.setText(String.format(Locale.getDefault(), "%1$03d", Integer.valueOf(this.f842k.f847b)));
        editText.addTextChangedListener(new a());
        ((EditText) viewInflate.findViewById(R.id.etUid)).setText(String.format(Locale.getDefault(), "%1$d", Integer.valueOf(this.f842k.f848c)));
        ((EditText) viewInflate.findViewById(R.id.etGid)).setText(String.format(Locale.getDefault(), "%1$d", Integer.valueOf(this.f842k.f849d)));
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvFileName);
        String[] strArr = this.f840i;
        if (strArr.length == 1) {
            textView.setText(strArr[0]);
        } else {
            textView.setText(context.getResources().getQuantityString(R.plurals.FINFO_FILE_COUNT, strArr.length, Integer.valueOf(strArr.length)));
        }
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        this.f838g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f838g.setOnShowListener(new b());
    }

    /* JADX INFO: renamed from: t */
    public final c m384t() {
        c cVar = this.f842k;
        cVar.f846a = 0;
        int i2 = cVar.f847b;
        c cVar2 = this.f843l;
        if (i2 != cVar2.f847b) {
            cVar.f846a = 0 | 1;
        }
        if (cVar.f849d != cVar2.f849d || cVar.f848c != cVar2.f848c) {
            cVar.f846a |= 2;
        }
        return cVar;
    }

    /* JADX INFO: renamed from: u */
    public final void m385u() {
        AbstractC0126e.b bVarM515l;
        this.f842k = new c();
        this.f843l = new c();
        AbstractC0194a abstractC0194aM589c = null;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.f840i;
            if (i2 >= strArr.length) {
                break;
            }
            C0129h[] c0129hArr = this.f839h;
            int i4 = 1;
            C0129h c0129h = c0129hArr.length > 1 ? new C0129h(strArr[i2], c0129hArr[i2]) : new C0129h(strArr[i2], c0129hArr[0]);
            if (abstractC0194aM589c != null) {
                bVarM515l = C0150c.m515l(abstractC0194aM589c, c0129h.toFile());
            } else {
                if (C0358b.m1038i(c0129h.f1015c)) {
                    abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
                    bVarM515l = C0150c.m515l(abstractC0194aM589c, c0129h.toFile());
                }
                i2++;
            }
            if (bVarM515l != null) {
                int iM79i0 = C0015d.m79i0(-1, bVarM515l.f1002h);
                c cVar = this.f842k;
                int i5 = cVar.f848c;
                if (i5 == -1 || i5 > iM79i0) {
                    cVar.f848c = iM79i0;
                }
                int iM79i1 = C0015d.m79i0(-1, bVarM515l.f1001g);
                c cVar2 = this.f842k;
                int i6 = cVar2.f849d;
                if (i6 == -1 || i6 > iM79i1) {
                    cVar2.f849d = iM79i1;
                }
                int i7 = 10;
                for (int i8 = 0; i8 < 3; i8++) {
                    int i9 = (i3 % i7) / i4;
                    int i10 = (bVarM515l.f1003i % i7) / i4;
                    if (i9 < i10) {
                        i3 = (i3 - (i9 * i4)) + (i10 * i4);
                    }
                    i4 *= 10;
                    i7 *= 10;
                }
            }
            i2++;
        }
        c cVar3 = this.f842k;
        cVar3.f847b = i3;
        c cVar4 = this.f843l;
        cVar4.getClass();
        cVar4.f847b = cVar3.f847b;
        cVar4.f848c = cVar3.f848c;
        cVar4.f849d = cVar3.f849d;
        if (abstractC0194aM589c != null) {
            abstractC0194aM589c.close();
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m386v() {
        int i2;
        AlertDialog alertDialog = this.f838g;
        if (alertDialog == null) {
            return;
        }
        try {
            i2 = Integer.parseInt(((EditText) alertDialog.findViewById(R.id.etPermissions)).getText().toString());
        } catch (Exception unused) {
            i2 = 0;
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = i2 % 10;
            i2 /= 10;
            if ((i4 & 1) == 1) {
                sb.insert(0, 'x');
            } else {
                sb.insert(0, '-');
            }
            if ((i4 & 2) == 2) {
                sb.insert(0, 'w');
            } else {
                sb.insert(0, '-');
            }
            if ((i4 & 4) == 4) {
                sb.insert(0, 'r');
            } else {
                sb.insert(0, '-');
            }
            sb.insert(0, ' ');
        }
        TextView textView = (TextView) this.f838g.findViewById(R.id.tvPermissionsText);
        if (textView != null) {
            textView.setText(sb.toString());
        }
    }

    public DialogInterfaceOnClickListenerC0114x(C0307d c0307d, Context context, C0129h[] c0129hArr, String[] strArr) {
        this.f742f = c0307d;
        this.f839h = (C0129h[]) c0129hArr.clone();
        this.f840i = (String[]) strArr.clone();
        m385u();
        m383s(context);
        m355a();
    }
}
