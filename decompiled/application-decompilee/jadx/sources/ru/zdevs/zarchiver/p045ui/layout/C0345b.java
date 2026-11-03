package ru.zdevs.zarchiver.p045ui.layout;

import android.content.Context;
import android.view.MotionEvent;
import p016f.C0086b;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.layout.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0345b extends C0086b {
    public C0345b(Context context) {
        super(context);
    }

    @Override // p016f.C0086b, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // p016f.C0086b, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }
}
