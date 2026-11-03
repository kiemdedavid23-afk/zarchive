.class public final Lc0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc0/c$a;->a:Landroid/view/View;

    .line 5
    .line 6
    const v0, 0x7f07007d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lc0/c$a;->b:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-static {v0}, Ly0/f;->d(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f070078

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-static {v0}, Ly0/f;->d(Landroid/widget/TextView;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    const v3, 0x7f08002c

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    if-eq p2, v3, :cond_0

    .line 41
    .line 42
    const/16 v4, 0x1000

    .line 43
    .line 44
    invoke-static {v4}, Ls0/b;->g(I)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lc0/c$a;->e:Landroid/widget/TextView;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iput-object v0, p0, Lc0/c$a;->e:Landroid/widget/TextView;

    .line 57
    .line 58
    :goto_0
    const v0, 0x7f070077

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-static {v0}, Ly0/f;->d(Landroid/widget/TextView;)V

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    if-eq p2, v3, :cond_1

    .line 73
    .line 74
    const/16 v3, 0x2000

    .line 75
    .line 76
    invoke-static {v3}, Ls0/b;->g(I)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lc0/c$a;->d:Landroid/widget/TextView;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iput-object v0, p0, Lc0/c$a;->d:Landroid/widget/TextView;

    .line 89
    .line 90
    :goto_1
    const v0, 0x7f070075

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/ImageView;

    .line 98
    .line 99
    iput-object p1, p0, Lc0/c$a;->c:Landroid/widget/ImageView;

    .line 100
    .line 101
    iput p2, p0, Lc0/c$a;->f:I

    .line 102
    .line 103
    iput-boolean p3, p0, Lc0/c$a;->g:Z

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final a(Lc0/d;Landroid/graphics/Bitmap;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc0/c$a;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f070075

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v1, p3, :cond_4

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const/4 p3, 0x4

    .line 21
    invoke-static {p3}, Ls0/b;->l(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lc0/d;->d()B

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eq v1, p3, :cond_1

    .line 37
    .line 38
    const/16 p3, 0x20

    .line 39
    .line 40
    invoke-static {p3}, Ls0/b;->l(I)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    invoke-static {v0, p2}, Ly0/f;->c(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 54
    iget-object p3, p0, Lc0/c$a;->e:Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    iget v0, p0, Lc0/c$a;->f:I

    .line 59
    .line 60
    const v1, 0x7f08002c

    .line 61
    .line 62
    .line 63
    if-ne v0, v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lc0/d;->c(Z)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return p2

    .line 73
    :cond_4
    const/4 p1, 0x0

    .line 74
    return p1
.end method
