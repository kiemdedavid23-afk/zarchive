package p057x0;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Toast;

/* JADX INFO: renamed from: x0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0431b extends ContextWrapper {

    /* JADX INFO: renamed from: a */
    public final Toast f2199a;

    /* JADX INFO: renamed from: b */
    public InterfaceC0430a f2200b;

    /* JADX INFO: renamed from: x0.b$a */
    public final class a extends ContextWrapper {
        public a(Context context) {
            super(context);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public final Object getSystemService(String str) {
            if (!"window".equals(str)) {
                return super.getSystemService(str);
            }
            return C0431b.this.new b((WindowManager) getBaseContext().getSystemService(str));
        }
    }

    /* JADX INFO: renamed from: x0.b$b */
    public final class b implements WindowManager {

        /* JADX INFO: renamed from: a */
        public final WindowManager f2202a;

        public b(WindowManager windowManager) {
            this.f2202a = windowManager;
        }

        @Override // android.view.ViewManager
        public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
            try {
                Log.d("WindowManagerWrapper", "WindowManager's addView(view, params) has been hooked.");
                this.f2202a.addView(view, layoutParams);
            } catch (WindowManager.BadTokenException e2) {
                Log.i("WindowManagerWrapper", e2.getMessage());
                C0431b c0431b = C0431b.this;
                InterfaceC0430a interfaceC0430a = c0431b.f2200b;
                if (interfaceC0430a != null) {
                    Toast toast = c0431b.f2199a;
                    interfaceC0430a.getClass();
                }
            } catch (Throwable th) {
                Log.e("WindowManagerWrapper", "[addView]", th);
            }
        }

        @Override // android.view.WindowManager
        public final Display getDefaultDisplay() {
            return this.f2202a.getDefaultDisplay();
        }

        @Override // android.view.ViewManager
        public final void removeView(View view) {
            this.f2202a.removeView(view);
        }

        @Override // android.view.WindowManager
        public final void removeViewImmediate(View view) {
            this.f2202a.removeViewImmediate(view);
        }

        @Override // android.view.ViewManager
        public final void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
            this.f2202a.updateViewLayout(view, layoutParams);
        }
    }

    public C0431b(Context context, Toast toast) {
        super(context);
        this.f2199a = toast;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return new a(getBaseContext().getApplicationContext());
    }
}
