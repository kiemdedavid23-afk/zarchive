.class public final Le1/a;
.super Le1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/a$e;
    }
.end annotation


# static fields
.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Le1/a$e;

.field public final h:Le1/a$c;

.field public final i:Le1/a$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Le1/a;->j:[I

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Le1/a;->k:[I

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    new-array v1, v0, [I

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Le1/a;->l:[I

    .line 23
    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    fill-array-data v0, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v0, Le1/a;->m:[I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x7f0700fd
        0x7f0700fc
        0x7f0700fb
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    :array_1
    .array-data 4
        0x7f08002c
        0x7f08002b
        0x7f08002d
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_2
    .array-data 4
        0x7f0700a0
        0x7f0700a2
        0x7f0700a1
        0x7f07009f
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_3
    .array-data 4
        0x0
        0x10
        0x20
        0x30
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Le1/a;-><init>(Landroid/content/Context;IZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZII)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Le1/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Le1/a;->f:Z

    .line 4
    new-instance v0, Le1/a$c;

    invoke-direct {v0, p0}, Le1/a$c;-><init>(Le1/a;)V

    iput-object v0, p0, Le1/a;->h:Le1/a$c;

    .line 5
    new-instance v0, Le1/a$d;

    invoke-direct {v0, p0}, Le1/a$d;-><init>(Le1/a;)V

    iput-object v0, p0, Le1/a;->i:Le1/a$d;

    .line 6
    iput p2, p0, Le1/a;->b:I

    .line 7
    iput-boolean p3, p0, Le1/a;->e:Z

    and-int/lit16 p2, p4, 0xf0

    .line 8
    iput p2, p0, Le1/a;->c:I

    const/16 p2, 0x8

    .line 9
    invoke-static {p4, p2}, Lb/d;->K(II)Z

    move-result p2

    iput-boolean p2, p0, Le1/a;->d:Z

    .line 10
    iget-object p2, p0, Le1/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    move p3, p1

    :goto_0
    const/4 p4, 0x3

    const/4 v0, 0x1

    if-ge p3, p4, :cond_1

    .line 11
    sget-object p4, Le1/a;->j:[I

    aget p4, p4, p3

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 12
    iget-object v1, p0, Le1/a;->h:Le1/a$c;

    invoke-virtual {p4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget-object v1, Le1/a;->k:[I

    aget v1, v1, p3

    iget v2, p0, Le1/a;->b:I

    if-ne v1, v2, :cond_0

    .line 14
    check-cast p4, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;

    invoke-virtual {p4, v0}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p5, v0}, Lb/d;->K(II)Z

    move-result p3

    const/4 p4, 0x4

    if-eqz p3, :cond_2

    const p3, 0x7f0700fb

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f07009d

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    if-ge p1, p4, :cond_4

    .line 18
    sget-object p3, Le1/a;->l:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 19
    iget-object p5, p0, Le1/a;->i:Le1/a$d;

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    sget-object p5, Le1/a;->m:[I

    aget p5, p5, p1

    iget v1, p0, Le1/a;->c:I

    if-ne p5, v1, :cond_3

    .line 21
    check-cast p3, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;

    invoke-virtual {p3, v0}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->setChecked(Z)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const p1, 0x7f0700a3

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 23
    iget-boolean p3, p0, Le1/a;->d:Z

    if-eqz p3, :cond_5

    .line 24
    move-object p3, p1

    check-cast p3, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;

    invoke-virtual {p3, v0}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->setChecked(Z)V

    .line 25
    :cond_5
    new-instance p3, Le1/a$a;

    invoke-direct {p3, p0}, Le1/a$a;-><init>(Le1/a;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07009e

    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 27
    iget-boolean p2, p0, Le1/a;->e:Z

    if-eqz p2, :cond_6

    .line 28
    move-object p2, p1

    check-cast p2, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;

    invoke-virtual {p2, v0}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->setChecked(Z)V

    .line 29
    :cond_6
    new-instance p2, Le1/a$b;

    invoke-direct {p2, p0}, Le1/a$b;-><init>(Le1/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le1/a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Le1/a;->g:Le1/a$e;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Le1/a;->b:I

    .line 10
    .line 11
    iget-boolean v2, p0, Le1/a;->e:Z

    .line 12
    .line 13
    iget v3, p0, Le1/a;->c:I

    .line 14
    .line 15
    iget-boolean v4, p0, Le1/a;->d:Z

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    :goto_0
    or-int/2addr v3, v4

    .line 24
    invoke-interface {v0, v1, v3, v2}, Le1/a$e;->a(IIZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
