.class public Lru/zdevs/zarchiver/ui/text/ExSearchView;
.super Landroid/widget/SearchView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/text/ExSearchView$c;
    }
.end annotation


# static fields
.field public static final i:[Lru/zdevs/zarchiver/ui/layout/a$a;


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/SearchView$OnCloseListener;

.field public c:Lru/zdevs/zarchiver/ui/text/ExSearchView$c;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/widget/PopupWindow;

.field public g:Lru/zdevs/zarchiver/ui/layout/a;

.field public final h:Lru/zdevs/zarchiver/ui/text/ExSearchView$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 3
    .line 4
    new-instance v7, Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 5
    .line 6
    const-string v2, "[SF]"

    .line 7
    .line 8
    const v3, 0x7f0600d3

    .line 9
    .line 10
    .line 11
    const v4, 0x7f0600d4

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const v6, -0xbbcca

    .line 16
    .line 17
    .line 18
    move-object v1, v7

    .line 19
    invoke-direct/range {v1 .. v6}, Lru/zdevs/zarchiver/ui/layout/a$a;-><init>(Ljava/lang/String;IIII)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object v7, v0, v1

    .line 24
    .line 25
    new-instance v1, Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 26
    .line 27
    const-string v9, "[APK]"

    .line 28
    .line 29
    const v10, 0x7f060094

    .line 30
    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const v12, 0x7f0c0196

    .line 34
    .line 35
    .line 36
    const/16 v13, -0x7ac9

    .line 37
    .line 38
    move-object v8, v1

    .line 39
    invoke-direct/range {v8 .. v13}, Lru/zdevs/zarchiver/ui/layout/a$a;-><init>(Ljava/lang/String;IIII)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    new-instance v1, Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 46
    .line 47
    const-string v4, "[ARC]"

    .line 48
    .line 49
    const v5, 0x7f060095

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const v7, 0x7f0c0197

    .line 54
    .line 55
    .line 56
    const v8, -0xa70fb

    .line 57
    .line 58
    .line 59
    move-object v3, v1

    .line 60
    invoke-direct/range {v3 .. v8}, Lru/zdevs/zarchiver/ui/layout/a$a;-><init>(Ljava/lang/String;IIII)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    aput-object v1, v0, v2

    .line 65
    .line 66
    new-instance v1, Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 67
    .line 68
    const-string v4, "[MP3]"

    .line 69
    .line 70
    const v5, 0x7f0600c1

    .line 71
    .line 72
    .line 73
    const v7, 0x7f0c0198

    .line 74
    .line 75
    .line 76
    const v8, -0x2aff07

    .line 77
    .line 78
    .line 79
    move-object v3, v1

    .line 80
    invoke-direct/range {v3 .. v8}, Lru/zdevs/zarchiver/ui/layout/a$a;-><init>(Ljava/lang/String;IIII)V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x3

    .line 84
    aput-object v1, v0, v2

    .line 85
    .line 86
    new-instance v1, Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 87
    .line 88
    const-string v4, "[DOC]"

    .line 89
    .line 90
    const v5, 0x7f06009f

    .line 91
    .line 92
    .line 93
    const v7, 0x7f0c0199

    .line 94
    .line 95
    .line 96
    const v8, -0xd68601

    .line 97
    .line 98
    .line 99
    move-object v3, v1

    .line 100
    invoke-direct/range {v3 .. v8}, Lru/zdevs/zarchiver/ui/layout/a$a;-><init>(Ljava/lang/String;IIII)V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x4

    .line 104
    aput-object v1, v0, v2

    .line 105
    .line 106
    new-instance v1, Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 107
    .line 108
    const-string v4, "[IMG]"

    .line 109
    .line 110
    const v5, 0x7f0600c6

    .line 111
    .line 112
    .line 113
    const v7, 0x7f0c019a

    .line 114
    .line 115
    .line 116
    const v8, -0xc85cb5

    .line 117
    .line 118
    .line 119
    move-object v3, v1

    .line 120
    invoke-direct/range {v3 .. v8}, Lru/zdevs/zarchiver/ui/layout/a$a;-><init>(Ljava/lang/String;IIII)V

    .line 121
    .line 122
    .line 123
    const/4 v2, 0x5

    .line 124
    aput-object v1, v0, v2

    .line 125
    .line 126
    new-instance v1, Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 127
    .line 128
    const-string v4, "[VID]"

    .line 129
    .line 130
    const v5, 0x7f0600da

    .line 131
    .line 132
    .line 133
    const v7, 0x7f0c019b

    .line 134
    .line 135
    .line 136
    const v8, -0x9ae001

    .line 137
    .line 138
    .line 139
    move-object v3, v1

    .line 140
    invoke-direct/range {v3 .. v8}, Lru/zdevs/zarchiver/ui/layout/a$a;-><init>(Ljava/lang/String;IIII)V

    .line 141
    .line 142
    .line 143
    const/4 v2, 0x6

    .line 144
    aput-object v1, v0, v2

    .line 145
    .line 146
    sput-object v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->i:[Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 147
    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lru/zdevs/zarchiver/ui/text/ExSearchView$a;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ui/text/ExSearchView$a;-><init>(Lru/zdevs/zarchiver/ui/text/ExSearchView;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lru/zdevs/zarchiver/ui/text/ExSearchView$b;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lru/zdevs/zarchiver/ui/text/ExSearchView$b;-><init>(Lru/zdevs/zarchiver/ui/text/ExSearchView;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->h:Lru/zdevs/zarchiver/ui/text/ExSearchView$b;

    .line 15
    .line 16
    invoke-static {p0}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->c(Landroid/widget/LinearLayout;)Landroid/widget/EditText;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 33
    .line 34
    const/high16 p2, 0x10000000

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lu0/b;->f()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const p2, 0x7f030016

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Ly0/c;->b(Landroid/content/Context;I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 59
    .line 60
    const/4 p2, -0x1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p0}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 73
    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static a(Lru/zdevs/zarchiver/ui/text/ExSearchView;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->getChips()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-gtz v3, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    array-length v4, v1

    .line 24
    if-gt v4, v2, :cond_1

    .line 25
    .line 26
    array-length v4, v1

    .line 27
    if-ne v4, v2, :cond_3

    .line 28
    .line 29
    const-string v4, "[SF]"

    .line 30
    .line 31
    aget-object v5, v1, v3

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->c:Lru/zdevs/zarchiver/ui/text/ExSearchView$c;

    .line 40
    .line 41
    if-eqz p0, :cond_4

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const-string v0, ""

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {p0, v0, v1}, Lru/zdevs/zarchiver/ui/text/ExSearchView$c;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v2, v3

    .line 57
    :cond_4
    :goto_1
    return v2
.end method

.method public static c(Landroid/widget/LinearLayout;)Landroid/widget/EditText;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Landroid/widget/EditText;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Landroid/widget/EditText;

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    instance-of v3, v2, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    check-cast v2, Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-static {v2}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->c(Landroid/widget/LinearLayout;)Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static d(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Landroid/widget/ImageView;

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    instance-of v3, v2, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    check-cast v2, Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-static {v2}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method private declared-synchronized getChips()[Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/layout/a;->getChips()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 3
    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 14
    .line 15
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 16
    .line 17
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    if-ge v0, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    invoke-super {p0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw v0
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->c(Landroid/widget/LinearLayout;)Landroid/widget/EditText;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->h:Lru/zdevs/zarchiver/ui/text/ExSearchView$b;

    .line 46
    .line 47
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/text/ExSearchView$b;->run()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final onClose()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 11
    .line 12
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 13
    .line 14
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->b:Landroid/widget/SearchView$OnCloseListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    monitor-enter p0

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->h:Lru/zdevs/zarchiver/ui/text/ExSearchView$b;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 17
    .line 18
    if-nez p1, :cond_3

    .line 19
    .line 20
    new-instance p1, Lru/zdevs/zarchiver/ui/layout/a;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Lru/zdevs/zarchiver/ui/layout/a;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 30
    .line 31
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v1, -0x2

    .line 34
    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 41
    .line 42
    sget-object p2, Lru/zdevs/zarchiver/ui/text/ExSearchView;->i:[Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 43
    .line 44
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p2, v2}, Lru/zdevs/zarchiver/ui/layout/a;->a([Lru/zdevs/zarchiver/ui/layout/a$a;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroid/widget/HorizontalScrollView;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    const/16 v2, 0x600

    .line 68
    .line 69
    invoke-static {v2}, Ls0/b;->k(I)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const/4 v3, 0x1

    .line 80
    :try_start_1
    new-array v4, v3, [I

    .line 81
    .line 82
    const v5, 0x10102ce

    .line 83
    .line 84
    .line 85
    aput v5, v4, p2

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    .line 97
    .line 98
    new-array v3, v3, [I

    .line 99
    .line 100
    const v4, 0x10100d4

    .line 101
    .line 102
    .line 103
    aput v4, v3, p2

    .line 104
    .line 105
    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-object v3, v0

    .line 118
    :goto_0
    :try_start_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Landroid/widget/FrameLayout;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const v4, 0x7f05000a

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    float-to-int v3, v3

    .line 145
    add-int/lit8 v3, v3, 0x32

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 148
    .line 149
    .line 150
    const/high16 v3, 0x41c80000    # 25.0f

    .line 151
    .line 152
    invoke-virtual {p1, v3}, Landroid/view/View;->setElevation(F)V

    .line 153
    .line 154
    .line 155
    move-object p1, v2

    .line 156
    goto :goto_2

    .line 157
    :cond_1
    const/16 v2, 0x300

    .line 158
    .line 159
    invoke-static {v2}, Ls0/b;->k(I)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_2

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const v3, 0x7f040004

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const v3, 0x1010031

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v3}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    :goto_1
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 193
    .line 194
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    .line 199
    .line 200
    :goto_2
    new-instance v2, Landroid/widget/PopupWindow;

    .line 201
    .line 202
    const/4 v3, -0x1

    .line 203
    invoke-direct {v2, p1, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 204
    .line 205
    .line 206
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 207
    .line 208
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 212
    .line 213
    const/16 v0, 0x3ea

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .line 217
    .line 218
    :try_start_3
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 219
    .line 220
    invoke-virtual {p1, p0, p2, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    .line 222
    .line 223
    :catch_1
    :cond_3
    :try_start_4
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {p1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_7

    .line 238
    .line 239
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 240
    .line 241
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_4
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 248
    .line 249
    if-eqz p2, :cond_5

    .line 250
    .line 251
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 252
    .line 253
    invoke-virtual {p2}, Lru/zdevs/zarchiver/ui/layout/a;->getChips()[Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 258
    .line 259
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 260
    .line 261
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 262
    .line 263
    .line 264
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->f:Landroid/widget/PopupWindow;

    .line 265
    .line 266
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->g:Lru/zdevs/zarchiver/ui/layout/a;

    .line 267
    .line 268
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    if-nez p2, :cond_6

    .line 273
    .line 274
    const-string p2, ""

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    :goto_3
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e:Ljava/lang/String;

    .line 282
    .line 283
    if-eqz p1, :cond_7

    .line 284
    .line 285
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->h:Lru/zdevs/zarchiver/ui/text/ExSearchView$b;

    .line 286
    .line 287
    const-wide/16 v0, 0x14

    .line 288
    .line 289
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    .line 291
    .line 292
    :cond_7
    :goto_4
    monitor-exit p0

    .line 293
    return-void

    .line 294
    :catchall_0
    move-exception p1

    .line 295
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    throw p1
.end method

.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->c:Lru/zdevs/zarchiver/ui/text/ExSearchView$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->getChips()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, Lru/zdevs/zarchiver/ui/text/ExSearchView$c;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->b:Landroid/widget/SearchView$OnCloseListener;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnQueryListener(Lru/zdevs/zarchiver/ui/text/ExSearchView$c;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->c:Lru/zdevs/zarchiver/ui/text/ExSearchView$c;

    return-void
.end method
