.class public final Lk/c$a;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    iget v3, p0, Lo/b;->a:I

    .line 12
    .line 13
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    const/16 v2, 0x1f

    .line 23
    .line 24
    if-gt v1, v2, :cond_0

    .line 25
    .line 26
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
