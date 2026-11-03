package ru.zdevs.zarchiver.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p020g0.C0129h;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.service.c */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0316c extends IInterface {

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.service.c$a */
    public static abstract class a extends Binder implements InterfaceC0316c {

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.service.c$a$a, reason: collision with other inner class name */
        public static class C0520a implements InterfaceC0316c {

            /* JADX INFO: renamed from: a */
            public final IBinder f1673a;

            public C0520a(IBinder iBinder) {
                this.f1673a = iBinder;
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveAddFiles(String str, C0129h c0129h, String str2, String str3, C0129h c0129h2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    b.m916c(parcelObtain, c0129h2);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveAddFilesMulti(String str, C0129h c0129h, String str2, List<String> list, List<C0129h> list2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringList(list);
                    b.m915b(parcelObtain, (ArrayList) list2);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveCompress(String str, C0129h c0129h, String str2, List<String> list, C0129h c0129h2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringList(list);
                    b.m916c(parcelObtain, c0129h2);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveCompressMulti(List<C0129h> list, String str, List<String> list2, C0129h c0129h, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.m915b(parcelObtain, (ArrayList) list);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStringList(list2);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveCreateFile(String str, C0129h c0129h, String str2, String str3, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveDelFiles(String str, C0129h c0129h, String str2, String str3, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveExtract(String str, C0129h c0129h, String str2, String str3, C0129h c0129h2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    b.m916c(parcelObtain, c0129h2);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveExtractMulti(List<String> list, List<C0129h> list2, List<String> list3, List<String> list4, List<C0129h> list5, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeStringList(list);
                    b.m915b(parcelObtain, (ArrayList) list2);
                    parcelObtain.writeStringList(list3);
                    parcelObtain.writeStringList(list4);
                    b.m915b(parcelObtain, (ArrayList) list5);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveOpenFile(String str, C0129h c0129h, String str2, String str3, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveRenFile(String str, C0129h c0129h, String str2, String str3, String str4, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveTest(String str, C0129h c0129h, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeString(str2);
                    this.f1673a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void ArchiveTestMulti(List<String> list, List<C0129h> list2, List<String> list3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeStringList(list);
                    b.m915b(parcelObtain, (ArrayList) list2);
                    parcelObtain.writeStringList(list3);
                    this.f1673a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void Copy(C0129h c0129h, C0129h c0129h2, List<String> list, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.m916c(parcelObtain, c0129h);
                    b.m916c(parcelObtain, c0129h2);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void CopyList(List<C0129h> list, C0129h c0129h, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.m915b(parcelObtain, (ArrayList) list);
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void GUIStatus(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f1673a.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final int GetProgPercent(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final String GetProgText(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final int GetStatusTask(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void HideNotification(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final boolean IsLock(C0129h c0129h, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void PluginOpenFile(C0129h c0129h, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void Remove(C0129h c0129h, List<String> list, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.m916c(parcelObtain, c0129h);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void RemoveList(List<C0129h> list, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.m915b(parcelObtain, (ArrayList) list);
                    parcelObtain.writeInt(i2);
                    this.f1673a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void SetOverwrite(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1673a.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void SetPassword(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.f1673a.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void SetSettings(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.f1673a.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ru.zdevs.zarchiver.service.InterfaceC0316c
            public final void SetStatusTask(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1673a.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f1673a;
            }
        }

        public a() {
            attachInterface(this, "ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
        }

        public static InterfaceC0316c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0316c)) ? new C0520a(iBinder) : (InterfaceC0316c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
            }
            if (i2 == 1598968902) {
                parcel2.writeString("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                return true;
            }
            switch (i2) {
                case 1:
                    String string = parcel.readString();
                    Parcelable.Creator<C0129h> creator = C0129h.CREATOR;
                    ArchiveCompress(string, (C0129h) b.m914a(parcel, creator), parcel.readString(), parcel.createStringArrayList(), (C0129h) b.m914a(parcel, creator), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    Parcelable.Creator<C0129h> creator2 = C0129h.CREATOR;
                    ArchiveCompressMulti(parcel.createTypedArrayList(creator2), parcel.readString(), parcel.createStringArrayList(), (C0129h) b.m914a(parcel, creator2), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    String string2 = parcel.readString();
                    Parcelable.Creator<C0129h> creator3 = C0129h.CREATOR;
                    ArchiveExtract(string2, (C0129h) b.m914a(parcel, creator3), parcel.readString(), parcel.readString(), (C0129h) b.m914a(parcel, creator3), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                    Parcelable.Creator<C0129h> creator4 = C0129h.CREATOR;
                    ArchiveExtractMulti(arrayListCreateStringArrayList, parcel.createTypedArrayList(creator4), parcel.createStringArrayList(), parcel.createStringArrayList(), parcel.createTypedArrayList(creator4), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    ArchiveOpenFile(parcel.readString(), (C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    ArchiveTest(parcel.readString(), (C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    ArchiveTestMulti(parcel.createStringArrayList(), parcel.createTypedArrayList(C0129h.CREATOR), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    String string3 = parcel.readString();
                    Parcelable.Creator<C0129h> creator5 = C0129h.CREATOR;
                    ArchiveAddFiles(string3, (C0129h) b.m914a(parcel, creator5), parcel.readString(), parcel.readString(), (C0129h) b.m914a(parcel, creator5), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    String string4 = parcel.readString();
                    Parcelable.Creator<C0129h> creator6 = C0129h.CREATOR;
                    ArchiveAddFilesMulti(string4, (C0129h) b.m914a(parcel, creator6), parcel.readString(), parcel.createStringArrayList(), parcel.createTypedArrayList(creator6), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    ArchiveDelFiles(parcel.readString(), (C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    ArchiveRenFile(parcel.readString(), (C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    ArchiveCreateFile(parcel.readString(), (C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    boolean zIsLock = IsLock((C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsLock ? 1 : 0);
                    return true;
                case 14:
                    Parcelable.Creator<C0129h> creator7 = C0129h.CREATOR;
                    Copy((C0129h) b.m914a(parcel, creator7), (C0129h) b.m914a(parcel, creator7), parcel.createStringArrayList(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    Parcelable.Creator<C0129h> creator8 = C0129h.CREATOR;
                    CopyList(parcel.createTypedArrayList(creator8), (C0129h) b.m914a(parcel, creator8), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    Remove((C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.createStringArrayList(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    RemoveList(parcel.createTypedArrayList(C0129h.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    PluginOpenFile((C0129h) b.m914a(parcel, C0129h.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    SetSettings(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    GUIStatus(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    HideNotification(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    SetPassword(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    SetOverwrite(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    String strGetProgText = GetProgText(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strGetProgText);
                    return true;
                case 25:
                    int iGetProgPercent = GetProgPercent(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iGetProgPercent);
                    return true;
                case 26:
                    int iGetStatusTask = GetStatusTask(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iGetStatusTask);
                    return true;
                case 27:
                    SetStatusTask(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.service.c$b */
    public static class b {
        /* JADX INFO: renamed from: a */
        public static Object m914a(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: renamed from: b */
        public static void m915b(Parcel parcel, ArrayList arrayList) {
            if (arrayList == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = arrayList.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                m916c(parcel, (Parcelable) arrayList.get(i2));
            }
        }

        /* JADX INFO: renamed from: c */
        public static void m916c(Parcel parcel, Parcelable parcelable) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, 0);
            }
        }
    }

    void ArchiveAddFiles(String str, C0129h c0129h, String str2, String str3, C0129h c0129h2, int i2);

    void ArchiveAddFilesMulti(String str, C0129h c0129h, String str2, List<String> list, List<C0129h> list2, int i2);

    void ArchiveCompress(String str, C0129h c0129h, String str2, List<String> list, C0129h c0129h2, int i2);

    void ArchiveCompressMulti(List<C0129h> list, String str, List<String> list2, C0129h c0129h, int i2);

    void ArchiveCreateFile(String str, C0129h c0129h, String str2, String str3, boolean z2, int i2);

    void ArchiveDelFiles(String str, C0129h c0129h, String str2, String str3, int i2);

    void ArchiveExtract(String str, C0129h c0129h, String str2, String str3, C0129h c0129h2, int i2);

    void ArchiveExtractMulti(List<String> list, List<C0129h> list2, List<String> list3, List<String> list4, List<C0129h> list5, int i2);

    void ArchiveOpenFile(String str, C0129h c0129h, String str2, String str3, int i2);

    void ArchiveRenFile(String str, C0129h c0129h, String str2, String str3, String str4, int i2);

    void ArchiveTest(String str, C0129h c0129h, String str2);

    void ArchiveTestMulti(List<String> list, List<C0129h> list2, List<String> list3);

    void Copy(C0129h c0129h, C0129h c0129h2, List<String> list, boolean z2, int i2);

    void CopyList(List<C0129h> list, C0129h c0129h, boolean z2, int i2);

    void GUIStatus(boolean z2);

    int GetProgPercent(int i2);

    String GetProgText(int i2);

    int GetStatusTask(int i2);

    void HideNotification(int i2);

    boolean IsLock(C0129h c0129h, int i2);

    void PluginOpenFile(C0129h c0129h, int i2);

    void Remove(C0129h c0129h, List<String> list, int i2);

    void RemoveList(List<C0129h> list, int i2);

    void SetOverwrite(int i2, int i3);

    void SetPassword(int i2, String str);

    void SetSettings(int i2, int i3, String str);

    void SetStatusTask(int i2, int i3);
}
