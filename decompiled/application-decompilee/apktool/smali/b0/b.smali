.class public final Lb0/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb0/b$a;,
        Lb0/b$b;
    }
.end annotation


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:[I


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    const-string v0, "Default"

    .line 2
    .line 3
    const-string v1, "Dynamic color"

    .line 4
    .line 5
    const-string v2, "Pink"

    .line 6
    .line 7
    const-string v3, "Purple"

    .line 8
    .line 9
    const-string v4, "Deep Purple"

    .line 10
    .line 11
    const-string v5, "Indigo"

    .line 12
    .line 13
    const-string v6, "Blue"

    .line 14
    .line 15
    const-string v7, "Light Blue"

    .line 16
    .line 17
    const-string v8, "Cyan"

    .line 18
    .line 19
    const-string v9, "Teal"

    .line 20
    .line 21
    const-string v10, "Green"

    .line 22
    .line 23
    const-string v11, "Light Green"

    .line 24
    .line 25
    const-string v12, "Lime"

    .line 26
    .line 27
    const-string v13, "Yellow"

    .line 28
    .line 29
    const-string v14, "Amber"

    .line 30
    .line 31
    const-string v15, "Orange"

    .line 32
    .line 33
    const-string v16, "Deep Orange"

    .line 34
    .line 35
    const-string v17, "Brown"

    .line 36
    .line 37
    const-string v18, "Grey"

    .line 38
    .line 39
    const-string v19, "Blue Grey"

    .line 40
    .line 41
    const-string v20, "Dark Grey"

    .line 42
    .line 43
    const-string v21, "Red"

    .line 44
    .line 45
    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lb0/b;->c:[Ljava/lang/String;

    .line 50
    .line 51
    const/16 v0, 0x16

    .line 52
    .line 53
    new-array v0, v0, [I

    .line 54
    .line 55
    fill-array-data v0, :array_0

    .line 56
    .line 57
    .line 58
    sput-object v0, Lb0/b;->d:[I

    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 4
        0x0
        0x0
        -0x16e19d
        -0x63d850
        -0x98c549
        -0xc0ae4b
        -0xde690d
        -0xfc560c
        -0xff432c
        -0xff6978
        -0xb350b0
        -0x743cb6
        -0x3223c7
        -0x14c5
        -0x3ef9
        -0x6800
        -0xa8de
        -0x86aab8
        -0x616162
        -0x9f8275
        -0xbdbdbe
        -0xbbcca
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout_inflater"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iput-object v0, p0, Lb0/b;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lb0/b;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    const/16 v1, 0x16

    .line 23
    .line 24
    if-ge v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    shl-int v2, v1, v0

    .line 28
    .line 29
    and-int/2addr v2, p2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v2, 0x1f

    .line 37
    .line 38
    if-lt v1, v2, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lb0/b;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v2, Lb0/b$a;

    .line 43
    .line 44
    sget-object v3, Lb0/b;->d:[I

    .line 45
    .line 46
    aget v3, v3, v0

    .line 47
    .line 48
    invoke-static {p1, v0}, Lb0/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-direct {v2, v3, v0, v4}, Lb0/b$a;-><init>(IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p1, 0x7f0c012f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    const p1, 0x7f0c0130

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    sget-object p0, Lb0/b;->c:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object p0, p0, p1

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lb0/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lb0/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iget-object v0, p0, Lb0/b;->a:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    const v1, 0x7f080028

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lb0/b$b;

    .line 14
    .line 15
    invoke-direct {p3}, Lb0/b$b;-><init>()V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f07007b

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object v0, p3, Lb0/b$b;->a:Landroid/widget/ImageView;

    .line 28
    .line 29
    const v0, 0x7f0700f7

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p3, Lb0/b$b;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Lb0/b$b;

    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lb0/b;->b:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lb0/b$a;

    .line 57
    .line 58
    iget-object v0, p3, Lb0/b$b;->b:Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object v1, p1, Lb0/b$a;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object p3, p3, Lb0/b$b;->a:Landroid/widget/ImageView;

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 68
    .line 69
    iget p1, p1, Lb0/b$a;->a:I

    .line 70
    .line 71
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    return-object p2
.end method
