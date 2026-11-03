package p021g1;

import java.util.Collection;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: g1.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0138i<T> implements Collection<T> {

    /* JADX INFO: renamed from: a */
    public final WeakHashMap<T, Boolean> f1037a = new WeakHashMap<>();

    @Override // java.util.Collection
    public final boolean add(T t2) {
        WeakHashMap<T, Boolean> weakHashMap = this.f1037a;
        if (weakHashMap.containsKey(t2)) {
            return false;
        }
        weakHashMap.put(t2, Boolean.TRUE);
        return true;
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends T> collection) {
        return false;
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f1037a.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f1037a.containsKey(obj);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        return false;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f1037a.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator<T> iterator() {
        return this.f1037a.keySet().iterator();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        return this.f1037a.remove(obj) != null;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return false;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return false;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f1037a.size();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return this.f1037a.keySet().toArray();
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) this.f1037a.keySet().toArray(tArr);
    }
}
