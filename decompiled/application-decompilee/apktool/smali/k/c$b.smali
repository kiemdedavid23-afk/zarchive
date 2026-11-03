.class public final Lk/c$b;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:[I


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "dip"

    .line 2
    .line 3
    const-string v1, "px"

    .line 4
    .line 5
    const-string v2, "dp"

    .line 6
    .line 7
    const-string v3, "mm"

    .line 8
    .line 9
    const-string v4, "sp"

    .line 10
    .line 11
    const-string v5, "pt"

    .line 12
    .line 13
    const-string v6, "in"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lk/c$b;->c:[Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x7

    .line 22
    new-array v0, v0, [I

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    sput-object v0, Lk/c$b;->d:[I

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 4
        0x1
        0x0
        0x1
        0x5
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lo/b;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lk/c$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x7

    .line 3
    iget-object v2, p0, Lk/c$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lk/c$b;->c:[Ljava/lang/String;

    .line 8
    .line 9
    aget-object v3, v1, v0

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v3, Lk/c$b;->d:[I

    .line 18
    .line 19
    aget v3, v3, v0

    .line 20
    .line 21
    aget-object v0, v1, v0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    iget-object v1, p0, Lk/c$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lk/c$b;->b:Ljava/lang/String;

    return-object p1
.end method
