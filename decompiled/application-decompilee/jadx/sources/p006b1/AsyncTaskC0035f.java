package p006b1;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassificationManager;
import ru.zdevs.zarchiver.p045ui.editor.EditableView;
import ru.zdevs.zarchiver.p045ui.editor.EditableView.C0333b;

/* JADX INFO: renamed from: b1.f */
/* JADX INFO: loaded from: classes.dex */
public final class AsyncTaskC0035f extends AsyncTask<Void, Void, TextClassification> implements Runnable {

    /* JADX INFO: renamed from: a */
    public final TextClassificationManager f238a;

    /* JADX INFO: renamed from: b */
    public final int f239b = 1000;

    /* JADX INFO: renamed from: c */
    public final EditableView f240c;

    public AsyncTaskC0035f(Context context, EditableView editableView) {
        this.f238a = (TextClassificationManager) context.getSystemService("textclassification");
        this.f240c = editableView;
    }

    @Override // android.os.AsyncTask
    public final TextClassification doInBackground(Void[] voidArr) {
        TextClassification textClassificationClassifyText;
        long j2 = this.f239b;
        EditableView editableView = this.f240c;
        editableView.postDelayed(this, j2);
        LocaleList localeList = LocaleList.getDefault();
        int i2 = Build.VERSION.SDK_INT;
        TextClassificationManager textClassificationManager = this.f238a;
        if (i2 >= 28) {
            String selectedText = editableView.getSelectedText();
            if (TextUtils.isEmpty(selectedText)) {
                return null;
            }
            textClassificationClassifyText = textClassificationManager.getTextClassifier().classifyText(new TextClassification.Request.Builder(selectedText, 0, selectedText.length()).setDefaultLocales(localeList).build());
        } else {
            textClassificationClassifyText = textClassificationManager.getTextClassifier().classifyText(editableView.getEditable(), editableView.getSelectionStart(), editableView.getSelectionEnd(), localeList);
        }
        editableView.removeCallbacks(this);
        return textClassificationClassifyText;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(TextClassification textClassification) {
        EditableView editableView = this.f240c;
        editableView.getClass();
        editableView.f1768m = editableView.startActionMode(editableView.new C0333b(0, textClassification), 1);
    }

    @Override // java.lang.Runnable
    public final void run() {
        EditableView editableView = this.f240c;
        editableView.getClass();
        editableView.f1768m = editableView.startActionMode(editableView.new C0333b(0, null), 1);
        cancel(true);
        editableView.removeCallbacks(this);
    }
}
