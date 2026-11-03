package p059y0;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.PopupMenu;
import p001a0.AbstractActivityC0003c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: y0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0437a extends ActionMode {

    /* JADX INFO: renamed from: a */
    public final AbstractActivityC0003c f2225a;

    /* JADX INFO: renamed from: b */
    public final ActionMode.Callback f2226b;

    /* JADX INFO: renamed from: c */
    public final PopupMenu f2227c;

    /* JADX INFO: renamed from: d */
    public final Drawable f2228d;

    public C0437a(AbstractActivityC0003c abstractActivityC0003c, ActionMode.Callback callback) {
        this.f2225a = abstractActivityC0003c;
        this.f2226b = callback;
        PopupMenu popupMenu = new PopupMenu(abstractActivityC0003c, abstractActivityC0003c.findViewById(R.id.bMenu));
        this.f2227c = popupMenu;
        int iM1168c = C0439c.m1168c(abstractActivityC0003c, R.attr.colorSelectHighlight);
        View viewFindViewById = abstractActivityC0003c.findViewById(R.id.rlTitle);
        this.f2228d = viewFindViewById.getBackground();
        viewFindViewById.setBackgroundDrawable(new ColorDrawable(iM1168c));
        callback.onCreateActionMode(this, popupMenu.getMenu());
    }

    @Override // android.view.ActionMode
    public final void finish() {
        AbstractActivityC0003c abstractActivityC0003c = this.f2225a;
        View viewFindViewById = abstractActivityC0003c.findViewById(R.id.rlTitle);
        if (viewFindViewById != null) {
            viewFindViewById.setBackgroundDrawable(this.f2228d);
        }
        abstractActivityC0003c.m5m(false);
        this.f2226b.onDestroyActionMode(this);
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return null;
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return this.f2227c.getMenu();
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return null;
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return null;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return null;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i2) {
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i2) {
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
    }
}
