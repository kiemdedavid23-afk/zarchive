.class public Lru/zdevs/zarchiver/activity/SettingsDlg$SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/SettingsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lu0/b;->f()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x1020010

    .line 15
    .line 16
    .line 17
    const v1, 0x7f03000e

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->a(Landroid/view/View;II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "settings"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "general"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const p1, 0x7f0f0003

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "gui"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const p1, 0x7f0f0004

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    const-string p1, "iTwoTab"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "fm"

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    const p1, 0x7f0f0002

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "compression"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const p1, 0x7f0f0001

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "root"

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    const p1, 0x7f0f0006

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_0
    return-void
.end method
