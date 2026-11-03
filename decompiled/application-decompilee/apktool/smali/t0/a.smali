.class public final Lt0/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZApp;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "za.db"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE FA (ID INTEGER PRIMARY KEY,EXT TEXT,PKG TEXT,CLS TEXT,SCHEME INTEGER, TYPE INTEGER)"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-gt p2, v0, :cond_0

    .line 3
    .line 4
    if-le p3, v0, :cond_0

    .line 5
    .line 6
    const-string p2, "DROP TABLE FA"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "CREATE TABLE FA (ID INTEGER PRIMARY KEY,EXT TEXT,PKG TEXT,CLS TEXT,SCHEME INTEGER, TYPE INTEGER)"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
