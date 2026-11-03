.class public Lru/zdevs/zarchiver/activity/SettingsDlg$PluginFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/SettingsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lk0/c;->a:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v2, "ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    new-instance v5, Landroid/content/Intent;

    .line 51
    .line 52
    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Landroid/content/ComponentName;

    .line 56
    .line 57
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 58
    .line 59
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 70
    .line 71
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    sget-object v6, Ls0/b;->e:Ljava/lang/String;

    .line 77
    .line 78
    const-string v7, "LOCALE"

    .line 79
    .line 80
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    new-instance v6, Landroid/preference/Preference;

    .line 84
    .line 85
    invoke-direct {v6, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v7, "intent"

    .line 100
    .line 101
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lk0/a;

    .line 105
    .line 106
    invoke-direct {v4}, Lk0/a;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    const p1, 0x7f0c0167

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lk0/b;

    .line 128
    .line 129
    invoke-direct {p1}, Lk0/b;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
