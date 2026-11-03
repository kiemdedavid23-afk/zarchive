.class public Lru/zdevs/zarchiver/ZTextEditor;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lv0/a$c;
.implements Lru/zdevs/zarchiver/ui/editor/EditableView$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ZTextEditor$p;,
        Lru/zdevs/zarchiver/ZTextEditor$q;,
        Lru/zdevs/zarchiver/ZTextEditor$o;,
        Lru/zdevs/zarchiver/ZTextEditor$r;,
        Lru/zdevs/zarchiver/ZTextEditor$t;,
        Lru/zdevs/zarchiver/ZTextEditor$s;,
        Lru/zdevs/zarchiver/ZTextEditor$u;
    }
.end annotation


# static fields
.field public static final h:[I

.field public static final i:[I

.field public static final j:[I

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[I


# instance fields
.field public a:Lru/zdevs/zarchiver/ui/editor/EditableView;

.field public b:Lf0/y;

.field public c:Landroid/widget/SearchView;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Lru/zdevs/zarchiver/ZTextEditor$p;

.field public final g:Lv0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lru/zdevs/zarchiver/ZTextEditor;->h:[I

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lru/zdevs/zarchiver/ZTextEditor;->i:[I

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    fill-array-data v0, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v0, Lru/zdevs/zarchiver/ZTextEditor;->j:[I

    .line 23
    .line 24
    const-string v1, "BIG5"

    .line 25
    .line 26
    const-string v2, "EUC-JP"

    .line 27
    .line 28
    const-string v3, "EUC-KR"

    .line 29
    .line 30
    const-string v4, "EUC-TW"

    .line 31
    .line 32
    const-string v5, "GB18030"

    .line 33
    .line 34
    const-string v6, "IBM855"

    .line 35
    .line 36
    const-string v7, "IBM866"

    .line 37
    .line 38
    const-string v8, "ISO-2022-JP"

    .line 39
    .line 40
    const-string v9, "ISO-2022-CN"

    .line 41
    .line 42
    const-string v10, "ISO-2022-KR"

    .line 43
    .line 44
    const-string v11, "ISO-8859-5"

    .line 45
    .line 46
    const-string v12, "ISO-8859-7"

    .line 47
    .line 48
    const-string v13, "ISO-8859-8"

    .line 49
    .line 50
    const-string v14, "KOI8-R"

    .line 51
    .line 52
    const-string v15, "MACCYRILLIC"

    .line 53
    .line 54
    const-string v16, "SHIFT_JIS"

    .line 55
    .line 56
    const-string v17, "TIS620"

    .line 57
    .line 58
    const-string v18, "US-ASCII"

    .line 59
    .line 60
    const-string v19, "UTF-8"

    .line 61
    .line 62
    const-string v20, "UTF-16BE"

    .line 63
    .line 64
    const-string v21, "UTF-16LE"

    .line 65
    .line 66
    const-string v22, "UTF-32BE"

    .line 67
    .line 68
    const-string v23, "UTF-32LE"

    .line 69
    .line 70
    const-string v24, "WINDOWS-1250"

    .line 71
    .line 72
    const-string v25, "WINDOWS-1251"

    .line 73
    .line 74
    const-string v26, "WINDOWS-1252"

    .line 75
    .line 76
    const-string v27, "WINDOWS-1253"

    .line 77
    .line 78
    const-string v28, "WINDOWS-1254"

    .line 79
    .line 80
    const-string v29, "WINDOWS-1255"

    .line 81
    .line 82
    const-string v30, "WINDOWS-1256"

    .line 83
    .line 84
    const-string v31, "WINDOWS-1257"

    .line 85
    .line 86
    const-string v32, "WINDOWS-1258"

    .line 87
    .line 88
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lru/zdevs/zarchiver/ZTextEditor;->k:[Ljava/lang/String;

    .line 93
    .line 94
    const-string v1, "Bash"

    .line 95
    .line 96
    const-string v2, "C / CPP"

    .line 97
    .line 98
    const-string v3, "C#"

    .line 99
    .line 100
    const-string v4, "Config"

    .line 101
    .line 102
    const-string v5, "CSS"

    .line 103
    .line 104
    const-string v6, "Go"

    .line 105
    .line 106
    const-string v7, "Java"

    .line 107
    .line 108
    const-string v8, "JavaScript"

    .line 109
    .line 110
    const-string v9, "PHP"

    .line 111
    .line 112
    const-string v10, "Python"

    .line 113
    .line 114
    const-string v11, "Ruby"

    .line 115
    .line 116
    const-string v12, "Rust"

    .line 117
    .line 118
    const-string v13, "XML"

    .line 119
    .line 120
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sput-object v0, Lru/zdevs/zarchiver/ZTextEditor;->l:[Ljava/lang/String;

    .line 125
    .line 126
    const/16 v0, 0xd

    .line 127
    .line 128
    new-array v0, v0, [I

    .line 129
    .line 130
    fill-array-data v0, :array_3

    .line 131
    .line 132
    .line 133
    sput-object v0, Lru/zdevs/zarchiver/ZTextEditor;->m:[I

    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 4
        0x7f070017
        0x7f070016
        0x7f070015
        0x7f070014
        0x7f070013
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 4
        0xc
        0xe
        0x10
        0x12
        0x14
        0x18
        0x1c
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 4
        0x7f070019
        0x7f07001a
        0x7f07001b
        0x7f07001c
        0x7f07001d
        0x7f07001e
        0x7f07001f
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_3
    .array-data 4
        0xa
        0x1
        0x4
        0xc
        0xd
        0x5
        0x2
        0x6
        0x7
        0x8
        0x9
        0x3
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv0/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lv0/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lv0/a;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)Lg0/f;
    .locals 4

    .line 1
    invoke-static {p0}, Lw0/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lm0/h;->b([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lg0/h;

    .line 15
    .line 16
    aget-object v0, v0, v2

    .line 17
    .line 18
    invoke-static {p0, v0}, Lm0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v1, p0}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    aget-object v1, v0, v2

    .line 31
    .line 32
    invoke-static {v1}, Lru/zdevs/zarchiver/io/SAF;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    aget-object v0, v0, v2

    .line 38
    .line 39
    invoke-static {v0}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lw0/c$a;->d(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lw0/c$a;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-static {v0, v1, v3, v2}, Lru/zdevs/zarchiver/io/SAF;->m(Ljava/lang/String;Ljava/lang/String;ZZ)Lg0/h;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lg0/h;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_0
    return-object p0
.end method

.method public static b(Lru/zdevs/zarchiver/ZTextEditor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz/d1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lz/d1;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lf0/w;

    .line 6
    .line 7
    const v1, 0x7f0c00f7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x6

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v0, v2, p0, v1, v3}, Lf0/w;-><init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lru/zdevs/zarchiver/ZTextEditor$e;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lru/zdevs/zarchiver/ZTextEditor$e;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lf0/i;->b:Lf0/i$c;

    .line 25
    .line 26
    new-instance v1, Lru/zdevs/zarchiver/ZTextEditor$f;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lru/zdevs/zarchiver/ZTextEditor$f;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Lf0/i;->a:Lf0/i$b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lf0/w;->r()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v3, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->c:Landroid/net/Uri;

    .line 7
    .line 8
    iget-object v4, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Lm0/d$a;

    .line 9
    .line 10
    if-nez v4, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance v0, Lf0/y;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v5, ""

    .line 18
    .line 19
    invoke-direct {v0, v1, p0, v5, v2}, Lf0/y;-><init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->b:Lf0/y;

    .line 23
    .line 24
    new-instance v1, Lru/zdevs/zarchiver/ZTextEditor$d;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lru/zdevs/zarchiver/ZTextEditor$d;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lf0/i;->a:Lf0/i$b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lf0/y;->r()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$s;

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    move-object v2, p0

    .line 44
    move v6, p1

    .line 45
    invoke-direct/range {v1 .. v6}, Lru/zdevs/zarchiver/ZTextEditor$s;-><init>(Landroid/content/Context;Landroid/net/Uri;Lm0/d$a;Lru/zdevs/zarchiver/ui/editor/b;Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lv0/a;

    .line 49
    .line 50
    invoke-virtual {v0, p0, p1}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public final e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 7
    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    new-instance v3, Landroid/widget/SearchView;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 34
    .line 35
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$b;

    .line 36
    .line 37
    invoke-direct {v3, p0, v0}, Lru/zdevs/zarchiver/ZTextEditor$b;-><init>(Lru/zdevs/zarchiver/ZTextEditor;Landroid/app/ActionBar;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 44
    .line 45
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$c;

    .line 46
    .line 47
    invoke-direct {v3, p0}, Lru/zdevs/zarchiver/ZTextEditor$c;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 62
    .line 63
    .line 64
    return v1
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    const v0, 0x7f070081

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x8

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 25
    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final g(Lv0/a$b;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lv0/a$b;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 10
    .line 11
    iget-object v0, p1, Lru/zdevs/zarchiver/ZTextEditor$p;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ZTextEditor;->h(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$a;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lru/zdevs/zarchiver/ZTextEditor$a;-><init>(Lru/zdevs/zarchiver/ZTextEditor;Lru/zdevs/zarchiver/ZTextEditor$p;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    const/4 v3, 0x0

    .line 29
    if-ne v0, v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->b:Lf0/y;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lf0/y;->d()V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lru/zdevs/zarchiver/ZTextEditor;->b:Lf0/y;

    .line 42
    .line 43
    :cond_1
    check-cast p1, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 44
    .line 45
    iget-object p1, p1, Lru/zdevs/zarchiver/ZTextEditor$o;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p1, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Lm0/d$a;

    .line 55
    .line 56
    if-nez p1, :cond_8

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v1, 0x3

    .line 63
    if-ne v0, v1, :cond_5

    .line 64
    .line 65
    check-cast p1, Lru/zdevs/zarchiver/ZTextEditor$r;

    .line 66
    .line 67
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->b:Lf0/y;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lf0/y;->d()V

    .line 72
    .line 73
    .line 74
    iput-object v3, p0, Lru/zdevs/zarchiver/ZTextEditor;->b:Lf0/y;

    .line 75
    .line 76
    :cond_4
    const v0, 0x7f0c00ec

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ZTextEditor;->h(Z)V

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p1, Lru/zdevs/zarchiver/ZTextEditor$r;->a:Z

    .line 86
    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 v1, 0x4

    .line 94
    if-ne v0, v1, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 100
    .line 101
    if-nez v0, :cond_6

    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    check-cast p1, Lru/zdevs/zarchiver/ZTextEditor$t;

    .line 105
    .line 106
    iget v1, p1, Lru/zdevs/zarchiver/ZTextEditor$t;->a:I

    .line 107
    .line 108
    if-ltz v1, :cond_7

    .line 109
    .line 110
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 111
    .line 112
    iget p1, p1, Lru/zdevs/zarchiver/ZTextEditor$t;->b:I

    .line 113
    .line 114
    add-int/2addr p1, v1

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 116
    .line 117
    .line 118
    const/4 v2, -0x1

    .line 119
    invoke-virtual {v0, v1, p1, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->r(III)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    const/high16 p1, 0x30ff0000

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    .line 127
    .line 128
    :cond_8
    :goto_0
    return-void
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ZTextEditor;->d:Z

    .line 2
    .line 3
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->e:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "* "

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    const p1, 0x7f07008b

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    check-cast p1, Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 18
    .line 19
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 24
    .line 25
    invoke-virtual {v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :cond_2
    const/4 v3, 0x1

    .line 34
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$u;

    .line 38
    .line 39
    invoke-direct {v3, v0, v1, v2}, Lru/zdevs/zarchiver/ZTextEditor$u;-><init>(Ljava/lang/CharSequence;Lru/zdevs/zarchiver/ui/editor/b;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lv0/a;

    .line 43
    .line 44
    invoke-virtual {v3, p0, v0}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Ls0/b;->m(Landroid/content/Context;ZLs0/b$a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ly0/e;->f(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Ls0/b;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0, v1}, Ly0/e;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 15
    .line 16
    sget-object v2, Ls0/b;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1, v2}, Ly0/e;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Ly0/e;->m(Landroid/app/Activity;Z)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 41
    .line 42
    .line 43
    :cond_0
    const v1, 0x7f08000f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f070007

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$g;

    .line 57
    .line 58
    invoke-direct {v3, p0}, Lru/zdevs/zarchiver/ZTextEditor$g;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    const v1, 0x7f070023

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$h;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Lru/zdevs/zarchiver/ZTextEditor$h;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    .line 88
    .line 89
    :cond_2
    const v1, 0x7f08000e

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    const v1, 0x7f070061

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 103
    .line 104
    iput-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 105
    .line 106
    sget v3, Ls0/b;->n:I

    .line 107
    .line 108
    and-int/lit8 v3, v3, 0xf

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setFont(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 114
    .line 115
    sget v3, Ls0/b;->o:I

    .line 116
    .line 117
    int-to-float v3, v3

    .line 118
    invoke-virtual {v1, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setFontSize(F)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 122
    .line 123
    sget v3, Ls0/b;->n:I

    .line 124
    .line 125
    const/16 v4, 0x10

    .line 126
    .line 127
    and-int/2addr v3, v4

    .line 128
    if-ne v3, v4, :cond_3

    .line 129
    .line 130
    move v3, v2

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    move v3, v0

    .line 133
    :goto_1
    invoke-virtual {v1, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setWordWrap(Z)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 137
    .line 138
    sget v3, Ls0/b;->n:I

    .line 139
    .line 140
    const/16 v4, 0x20

    .line 141
    .line 142
    and-int/2addr v3, v4

    .line 143
    if-ne v3, v4, :cond_4

    .line 144
    .line 145
    move v0, v2

    .line 146
    :cond_4
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setLineNumber(Z)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setOnTextChangeChange(Lru/zdevs/zarchiver/ui/editor/EditableView$e;)V

    .line 152
    .line 153
    .line 154
    if-eqz p1, :cond_5

    .line 155
    .line 156
    const-string v0, "txtValid"

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_6

    .line 163
    .line 164
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZTextEditor;->onNewIntent(Landroid/content/Intent;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZTextEditor;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f090007

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const v0, 0x7f070034

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    const v0, 0x7f070033

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f070008

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    const v0, 0x7f07002d

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    :cond_0
    return v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    const/16 v2, 0x1000

    .line 11
    .line 12
    invoke-static {v1, v2}, Lb/d;->K(II)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x2f

    .line 20
    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZTextEditor;->d(Z)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    const/16 v0, 0x22

    .line 28
    .line 29
    if-ne p1, v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZTextEditor;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    return v2

    .line 38
    :cond_2
    const/16 v0, 0x85

    .line 39
    .line 40
    if-ne p1, v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZTextEditor;->i()V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZTextEditor;->c()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lru/zdevs/zarchiver/ZTextEditor$q;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v3, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 27
    .line 28
    invoke-virtual {v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v2, v1, p1, v0, v3}, Lru/zdevs/zarchiver/ZTextEditor$q;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lru/zdevs/zarchiver/ui/editor/b;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lv0/a;

    .line 36
    .line 37
    invoke-virtual {v2, p0, p1}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    const v3, 0x7f07006f

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne v0, v3, :cond_4

    .line 12
    .line 13
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->h:[I

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    :goto_0
    const/4 v5, 0x5

    .line 20
    if-ge v1, v5, :cond_1

    .line 21
    .line 22
    aget v5, v0, v1

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :goto_1
    if-ltz v1, :cond_3

    .line 32
    .line 33
    sget v0, Ls0/b;->n:I

    .line 34
    .line 35
    and-int/lit8 v0, v0, 0xf

    .line 36
    .line 37
    if-ne v1, v0, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 44
    .line 45
    iget-boolean v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 46
    .line 47
    iget-boolean p1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 48
    .line 49
    invoke-static {p0, v1, v2, v0, p1}, Ls0/b;->n(Landroid/content/Context;IIZZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lru/zdevs/zarchiver/ZTextEditor$i;

    .line 56
    .line 57
    invoke-direct {p1, p0, v1}, Lru/zdevs/zarchiver/ZTextEditor$i;-><init>(Lru/zdevs/zarchiver/ZTextEditor;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_2
    return v4

    .line 64
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const v3, 0x7f070070

    .line 69
    .line 70
    .line 71
    if-ne v0, v3, :cond_9

    .line 72
    .line 73
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->j:[I

    .line 74
    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    :goto_3
    const/4 v5, 0x7

    .line 80
    if-ge v1, v5, :cond_6

    .line 81
    .line 82
    aget v5, v0, v1

    .line 83
    .line 84
    if-ne v3, v5, :cond_5

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    move v1, v2

    .line 91
    :goto_4
    if-ltz v1, :cond_8

    .line 92
    .line 93
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->i:[I

    .line 94
    .line 95
    aget v3, v0, v1

    .line 96
    .line 97
    sget v5, Ls0/b;->o:I

    .line 98
    .line 99
    if-ne v3, v5, :cond_7

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 103
    .line 104
    .line 105
    aget p1, v0, v1

    .line 106
    .line 107
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 108
    .line 109
    iget-boolean v1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 110
    .line 111
    iget-boolean v0, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 112
    .line 113
    invoke-static {p0, v2, p1, v1, v0}, Ls0/b;->n(Landroid/content/Context;IIZZ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v4}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lru/zdevs/zarchiver/ZTextEditor$j;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ZTextEditor$j;-><init>(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_5
    return v4

    .line 128
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const v3, 0x102002c

    .line 133
    .line 134
    .line 135
    if-eq v0, v3, :cond_1c

    .line 136
    .line 137
    const v5, 0x7f07000f

    .line 138
    .line 139
    .line 140
    if-ne v0, v5, :cond_a

    .line 141
    .line 142
    goto/16 :goto_10

    .line 143
    .line 144
    :cond_a
    const v3, 0x7f070033

    .line 145
    .line 146
    .line 147
    if-ne v0, v3, :cond_b

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Lru/zdevs/zarchiver/ZTextEditor;->d(Z)V

    .line 150
    .line 151
    .line 152
    return v4

    .line 153
    :cond_b
    const v3, 0x7f07002d

    .line 154
    .line 155
    .line 156
    if-ne v0, v3, :cond_c

    .line 157
    .line 158
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZTextEditor;->i()V

    .line 159
    .line 160
    .line 161
    return v4

    .line 162
    :cond_c
    const v3, 0x7f070034

    .line 163
    .line 164
    .line 165
    if-ne v0, v3, :cond_d

    .line 166
    .line 167
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZTextEditor;->e()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    return p1

    .line 172
    :cond_d
    const v3, 0x7f07003f

    .line 173
    .line 174
    .line 175
    if-ne v0, v3, :cond_e

    .line 176
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    xor-int/2addr p1, v4

    .line 182
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 183
    .line 184
    iget-boolean v0, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 185
    .line 186
    invoke-static {p0, v2, v2, p1, v0}, Ls0/b;->n(Landroid/content/Context;IIZZ)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v4}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$k;

    .line 193
    .line 194
    invoke-direct {v0, p0, p1}, Lru/zdevs/zarchiver/ZTextEditor$k;-><init>(Lru/zdevs/zarchiver/ZTextEditor;Z)V

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 198
    .line 199
    .line 200
    return v4

    .line 201
    :cond_e
    const v3, 0x7f070022

    .line 202
    .line 203
    .line 204
    if-ne v0, v3, :cond_f

    .line 205
    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    xor-int/2addr p1, v4

    .line 211
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 212
    .line 213
    iget-boolean v0, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 214
    .line 215
    invoke-static {p0, v2, v2, v0, p1}, Ls0/b;->n(Landroid/content/Context;IIZZ)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v4}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$l;

    .line 222
    .line 223
    invoke-direct {v0, p0, p1}, Lru/zdevs/zarchiver/ZTextEditor$l;-><init>(Lru/zdevs/zarchiver/ZTextEditor;Z)V

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 227
    .line 228
    .line 229
    return v4

    .line 230
    :cond_f
    const/16 p1, 0x9

    .line 231
    .line 232
    const v3, 0x7f070008

    .line 233
    .line 234
    .line 235
    const v5, 0x7f0c009e

    .line 236
    .line 237
    .line 238
    const v6, 0x7f0c0137

    .line 239
    .line 240
    .line 241
    const v7, 0x7f0600ca

    .line 242
    .line 243
    .line 244
    const v8, 0x7f0600c9

    .line 245
    .line 246
    .line 247
    if-ne v0, v3, :cond_15

    .line 248
    .line 249
    invoke-static {p0, v8}, Ly0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {p0, v7}, Ly0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    iget-object v7, p0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 258
    .line 259
    if-eqz v7, :cond_11

    .line 260
    .line 261
    iget-object v7, v7, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Lm0/d$a;

    .line 262
    .line 263
    if-nez v7, :cond_10

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_10
    iget-object v7, v7, Lm0/d$a;->b:Ljava/lang/String;

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_11
    :goto_6
    const/4 v7, 0x0

    .line 270
    :goto_7
    new-instance v8, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .line 274
    .line 275
    new-instance v9, Lb0/h;

    .line 276
    .line 277
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    if-nez v7, :cond_12

    .line 282
    .line 283
    move-object v10, v0

    .line 284
    goto :goto_8

    .line 285
    :cond_12
    move-object v10, v3

    .line 286
    :goto_8
    invoke-direct {v9, v2, v6, v10}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    sget-object v2, Lru/zdevs/zarchiver/ZTextEditor;->k:[Ljava/lang/String;

    .line 293
    .line 294
    move v6, v1

    .line 295
    :goto_9
    const/16 v9, 0x20

    .line 296
    .line 297
    if-ge v1, v9, :cond_14

    .line 298
    .line 299
    aget-object v9, v2, v1

    .line 300
    .line 301
    new-instance v10, Lb0/h;

    .line 302
    .line 303
    add-int/lit8 v11, v6, 0x1

    .line 304
    .line 305
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    if-eqz v12, :cond_13

    .line 310
    .line 311
    move-object v12, v0

    .line 312
    goto :goto_a

    .line 313
    :cond_13
    move-object v12, v3

    .line 314
    :goto_a
    invoke-direct {v10, v6, v9, v12}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    .line 322
    move v6, v11

    .line 323
    goto :goto_9

    .line 324
    :cond_14
    new-instance v0, Lf0/v;

    .line 325
    .line 326
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-direct {v0, p0, v8, v1, p1}, Lf0/v;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    new-instance p1, Lru/zdevs/zarchiver/ZTextEditor$m;

    .line 334
    .line 335
    invoke-direct {p1, p0, v0, v7}, Lru/zdevs/zarchiver/ZTextEditor$m;-><init>(Lru/zdevs/zarchiver/ZTextEditor;Lf0/v;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iput-object p1, v0, Lf0/i;->b:Lf0/i$c;

    .line 339
    .line 340
    invoke-virtual {v0}, Lf0/v;->t()V

    .line 341
    .line 342
    .line 343
    return v4

    .line 344
    :cond_15
    const v3, 0x7f07003c

    .line 345
    .line 346
    .line 347
    if-ne v0, v3, :cond_1b

    .line 348
    .line 349
    invoke-static {p0, v8}, Ly0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {p0, v7}, Ly0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    sget v7, Ls0/b;->n:I

    .line 358
    .line 359
    const/16 v8, 0x40

    .line 360
    .line 361
    and-int/2addr v7, v8

    .line 362
    if-ne v7, v8, :cond_16

    .line 363
    .line 364
    move v7, v4

    .line 365
    goto :goto_b

    .line 366
    :cond_16
    move v7, v1

    .line 367
    :goto_b
    if-eqz v7, :cond_17

    .line 368
    .line 369
    const v7, 0x7f06009b

    .line 370
    .line 371
    .line 372
    invoke-static {p0, v7}, Ly0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    goto :goto_c

    .line 377
    :cond_17
    move-object v7, v3

    .line 378
    :goto_c
    iget-object v8, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 379
    .line 380
    invoke-virtual {v8}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSyntax()I

    .line 381
    .line 382
    .line 383
    move-result v8

    .line 384
    new-instance v9, Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .line 388
    .line 389
    new-instance v10, Lb0/h;

    .line 390
    .line 391
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-direct {v10, v2, v6, v7}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    new-instance v2, Lb0/h;

    .line 402
    .line 403
    const v6, 0x7f0c0028

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    if-gtz v8, :cond_18

    .line 411
    .line 412
    move-object v7, v0

    .line 413
    goto :goto_d

    .line 414
    :cond_18
    move-object v7, v3

    .line 415
    :goto_d
    invoke-direct {v2, v1, v6, v7}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    :goto_e
    const/16 v2, 0xd

    .line 422
    .line 423
    if-ge v1, v2, :cond_1a

    .line 424
    .line 425
    new-instance v2, Lb0/h;

    .line 426
    .line 427
    sget-object v6, Lru/zdevs/zarchiver/ZTextEditor;->m:[I

    .line 428
    .line 429
    aget v6, v6, v1

    .line 430
    .line 431
    sget-object v7, Lru/zdevs/zarchiver/ZTextEditor;->l:[Ljava/lang/String;

    .line 432
    .line 433
    aget-object v7, v7, v1

    .line 434
    .line 435
    if-ne v6, v8, :cond_19

    .line 436
    .line 437
    move-object v10, v0

    .line 438
    goto :goto_f

    .line 439
    :cond_19
    move-object v10, v3

    .line 440
    :goto_f
    invoke-direct {v2, v6, v7, v10}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    add-int/lit8 v1, v1, 0x1

    .line 447
    .line 448
    goto :goto_e

    .line 449
    :cond_1a
    new-instance v0, Lf0/v;

    .line 450
    .line 451
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-direct {v0, p0, v9, v1, p1}, Lf0/v;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 456
    .line 457
    .line 458
    new-instance p1, Lru/zdevs/zarchiver/ZTextEditor$n;

    .line 459
    .line 460
    invoke-direct {p1, p0, v0}, Lru/zdevs/zarchiver/ZTextEditor$n;-><init>(Lru/zdevs/zarchiver/ZTextEditor;Lf0/v;)V

    .line 461
    .line 462
    .line 463
    iput-object p1, v0, Lf0/i;->b:Lf0/i$c;

    .line 464
    .line 465
    invoke-virtual {v0}, Lf0/v;->t()V

    .line 466
    .line 467
    .line 468
    return v4

    .line 469
    :cond_1b
    return v1

    .line 470
    :cond_1c
    :goto_10
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 471
    .line 472
    if-eqz p1, :cond_1d

    .line 473
    .line 474
    if-ne v0, v3, :cond_1d

    .line 475
    .line 476
    invoke-virtual {p1, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 477
    .line 478
    .line 479
    goto :goto_11

    .line 480
    :cond_1d
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZTextEditor;->c()V

    .line 481
    .line 482
    .line 483
    :goto_11
    return v4
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lv0/a;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lv0/a;->d(Lv0/a$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    const v0, 0x7f07003f

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 9
    .line 10
    iget-boolean v1, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f070022

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 23
    .line 24
    iget-boolean v1, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->h:[I

    .line 30
    .line 31
    sget v1, Ls0/b;->n:I

    .line 32
    .line 33
    and-int/lit8 v1, v1, 0xf

    .line 34
    .line 35
    aget v0, v0, v1

    .line 36
    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->i:[I

    .line 46
    .line 47
    sget v2, Ls0/b;->o:I

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    :goto_0
    const/4 v4, 0x7

    .line 51
    if-ge v3, v4, :cond_1

    .line 52
    .line 53
    aget v4, v0, v3

    .line 54
    .line 55
    if-ne v2, v4, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v3, -0x1

    .line 62
    :goto_1
    if-lez v3, :cond_2

    .line 63
    .line 64
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->j:[I

    .line 65
    .line 66
    aget v0, v0, v3

    .line 67
    .line 68
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "txtChg"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->d:Z

    .line 14
    .line 15
    const-string v0, "txtName"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->e:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 24
    .line 25
    const-string v1, "txtSyntax"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setSyntax(I)V

    .line 32
    .line 33
    .line 34
    const-string v0, "op2u"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lru/zdevs/zarchiver/ZTextEditor$p;-><init>(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 48
    .line 49
    const-string v0, "txtValid"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    const-string p1, "File is too big for restore state"

    .line 58
    .line 59
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lru/zdevs/zarchiver/ZTextEditor$q;

    .line 67
    .line 68
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 69
    .line 70
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->c:Landroid/net/Uri;

    .line 71
    .line 72
    iget-object v2, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Lm0/d$a;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget-object v2, v2, Lm0/d$a;->b:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 v2, 0x0

    .line 80
    :goto_0
    iget-object v3, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 81
    .line 82
    invoke-virtual {v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v0, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->d:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {p1, v1, v0, v2, v3}, Lru/zdevs/zarchiver/ZTextEditor$q;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lru/zdevs/zarchiver/ui/editor/b;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lv0/a;

    .line 92
    .line 93
    invoke-virtual {p1, p0, v0}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ZTextEditor;->d:Z

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZTextEditor;->h(Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lv0/a;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p0}, Lv0/a;->a(Lv0/a$c;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "txtChg"

    .line 5
    .line 6
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->d:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "txtName"

    .line 12
    .line 13
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 19
    .line 20
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 21
    .line 22
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 23
    .line 24
    const v1, 0xffc00

    .line 25
    .line 26
    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    const-string v1, "txtValid"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSyntax()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const-string v1, "txtSyntax"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "op2n"

    .line 55
    .line 56
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Lm0/d$a;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const-string v2, "op2b"

    .line 64
    .line 65
    iget-object v3, v1, Lm0/d$a;->a:[B

    .line 66
    .line 67
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 68
    .line 69
    .line 70
    const-string v2, "op2f"

    .line 71
    .line 72
    iget-object v3, v1, Lm0/d$a;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "op2r"

    .line 78
    .line 79
    iget-boolean v1, v1, Lm0/d$a;->c:Z

    .line 80
    .line 81
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const-string v1, "op2u"

    .line 85
    .line 86
    iget-object v2, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->c:Landroid/net/Uri;

    .line 87
    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "op2t"

    .line 92
    .line 93
    iget-object v0, v0, Lru/zdevs/zarchiver/ZTextEditor$p;->d:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method
