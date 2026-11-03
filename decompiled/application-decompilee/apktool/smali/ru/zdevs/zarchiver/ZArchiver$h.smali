.class public final Lru/zdevs/zarchiver/ZArchiver$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZArchiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f07000c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iget-object v3, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p2, v3, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 14
    .line 15
    iget-object p2, p2, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 16
    .line 17
    invoke-virtual {p2, v3, v2}, Lru/zdevs/zarchiver/a;->m(Landroid/content/Context;Z)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const v0, 0x7f070028

    .line 29
    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Lru/zdevs/zarchiver/ZArchiver;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v3, p1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    iget-char v1, v1, Lru/zdevs/zarchiver/d;->a:C

    .line 6
    .line 7
    invoke-virtual {v0}, La0/c;->getMenuInflater()Landroid/view/MenuInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x7f09000a

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x22

    .line 18
    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    const v4, 0x7f090008

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v4, 0x7f09000b

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v2, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 29
    .line 30
    .line 31
    const v4, 0x7f090004

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v4, v2, [I

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const v6, 0x7f07002e

    .line 42
    .line 43
    .line 44
    aput v6, v4, v5

    .line 45
    .line 46
    invoke-static {p2, v4, v5}, Ly0/e;->n(Landroid/view/Menu;[IZ)V

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    if-ne v1, v3, :cond_2

    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    new-array v3, v3, [I

    .line 54
    .line 55
    aput v6, v3, v5

    .line 56
    .line 57
    const v6, 0x7f070024

    .line 58
    .line 59
    .line 60
    aput v6, v3, v2

    .line 61
    .line 62
    const v6, 0x7f070025

    .line 63
    .line 64
    .line 65
    aput v6, v3, v4

    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    const v7, 0x7f070006

    .line 69
    .line 70
    .line 71
    aput v7, v3, v6

    .line 72
    .line 73
    iget-object v6, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 74
    .line 75
    if-nez v6, :cond_1

    .line 76
    .line 77
    move v6, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const v6, 0x7f07000c

    .line 80
    .line 81
    .line 82
    :goto_1
    const/4 v7, 0x4

    .line 83
    aput v6, v3, v7

    .line 84
    .line 85
    invoke-static {p2, v3, v5}, Ly0/e;->n(Landroid/view/Menu;[IZ)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    new-array v3, v4, [I

    .line 90
    .line 91
    fill-array-data v3, :array_0

    .line 92
    .line 93
    .line 94
    invoke-static {p2, v3, v5}, Ly0/e;->n(Landroid/view/Menu;[IZ)V

    .line 95
    .line 96
    .line 97
    const v3, 0x7f070026

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    :goto_2
    new-array v3, v2, [I

    .line 108
    .line 109
    const v6, 0x7f070028

    .line 110
    .line 111
    .line 112
    aput v6, v3, v5

    .line 113
    .line 114
    invoke-static {p2, v3, v2}, Ly0/e;->n(Landroid/view/Menu;[IZ)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lu0/b;->e(Landroid/content/Context;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    const/4 v3, -0x1

    .line 124
    invoke-virtual {v0, v3, p2}, La0/c;->l(ILandroid/view/Menu;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ZArchiver;->S(Landroid/view/ActionMode;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 131
    .line 132
    invoke-virtual {p1, v5}, Lru/zdevs/zarchiver/ui/FilePanelView;->setPageChangeEnable(Z)V

    .line 133
    .line 134
    .line 135
    if-ne v1, v4, :cond_4

    .line 136
    .line 137
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 138
    .line 139
    iget-boolean p1, p1, Lru/zdevs/zarchiver/d;->b:Z

    .line 140
    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    const p1, 0x7f0c00fe

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 147
    .line 148
    .line 149
    :cond_4
    return v2

    .line 150
    nop

    .line 151
    :array_0
    .array-data 4
        0x7f070029
        0x7f07000c
    .end array-data
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lru/zdevs/zarchiver/a;->m(Landroid/content/Context;Z)Z

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, La0/c;->b:Landroid/view/ActionMode;

    .line 13
    .line 14
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setPageChangeEnable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    invoke-static {p2}, Ly0/e;->k(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
