package p033m0;

import java.io.IOException;
import java.nio.file.AccessDeniedException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p051u0.InterfaceC0381d;

/* JADX INFO: renamed from: m0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0179b extends SimpleFileVisitor<Path> {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AtomicInteger f1135a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ AtomicLong f1136b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC0381d f1137c;

    public C0179b(AtomicInteger atomicInteger, AtomicLong atomicLong, InterfaceC0381d interfaceC0381d) {
        this.f1135a = atomicInteger;
        this.f1136b = atomicLong;
        this.f1137c = interfaceC0381d;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        this.f1135a.incrementAndGet();
        this.f1136b.addAndGet(basicFileAttributes.size());
        InterfaceC0381d interfaceC0381d = this.f1137c;
        return (interfaceC0381d == null || !interfaceC0381d.isCancelled()) ? FileVisitResult.CONTINUE : FileVisitResult.TERMINATE;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFileFailed(Object obj, IOException iOException) {
        return iOException instanceof AccessDeniedException ? FileVisitResult.SKIP_SUBTREE : super.visitFileFailed((Path) obj, iOException);
    }
}
