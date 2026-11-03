.class public Lru/zdevs/zarchiver/activity/SettingsDlg;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/activity/SettingsDlg$a;,
        Lru/zdevs/zarchiver/activity/SettingsDlg$b;,
        Lru/zdevs/zarchiver/activity/SettingsDlg$c;,
        Lru/zdevs/zarchiver/activity/SettingsDlg$PluginFragment;,
        Lru/zdevs/zarchiver/activity/SettingsDlg$SettingsFragment;
    }
.end annotation


# instance fields
.field public a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishAndRemoveTask()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object p3, p2

    .line 14
    :goto_0
    const/16 v0, 0x190

    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    new-instance p1, Lru/zdevs/zarchiver/activity/SettingsDlg$b;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-direct {p1, p3}, Lru/zdevs/zarchiver/activity/SettingsDlg$b;-><init>(Ljava/io/OutputStream;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2, p2}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/16 v0, 0x191

    .line 41
    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    .line 44
    if-eqz p3, :cond_3

    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lru/zdevs/zarchiver/activity/SettingsDlg$c;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-direct {p1, p3}, Lru/zdevs/zarchiver/activity/SettingsDlg$c;-><init>(Ljava/io/InputStream;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2, p2}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public final onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0f0005

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Ly0/e;->m(Landroid/app/Activity;Z)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Ls0/b;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, v0}, Ly0/e;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0c017d

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg;->a:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    invoke-static {}, Lu0/b;->f()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const v1, 0x1020016

    .line 56
    .line 57
    .line 58
    const v2, 0x7f03000c

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->a(Landroid/view/View;II)V

    .line 62
    .line 63
    .line 64
    :cond_1
    const/16 v0, 0x600

    .line 65
    .line 66
    invoke-static {v0}, Ls0/b;->k(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const v0, 0x102000a

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/ListView;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const v1, 0x106000d

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    const-string p1, "settings"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    new-instance v1, Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string p1, "ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment"

    .line 118
    .line 119
    invoke-virtual {p0, p1, v1}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    const-string p1, "title"

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/activity/SettingsDlg;->getMenuInflater()Landroid/view/MenuInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f090006

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const v2, 0x7f070040

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const-string p1, "za_settings.txt"

    .line 14
    .line 15
    const/16 v0, 0x190

    .line 16
    .line 17
    invoke-static {p0, p1, v3, v0}, Lw0/g;->f(Landroid/app/Activity;Ljava/lang/String;ZI)V

    .line 18
    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    const v2, 0x7f070095

    .line 22
    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x191

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1, p1}, Lw0/g;->f(Landroid/app/Activity;Ljava/lang/String;ZI)V

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_1
    const/16 v2, 0x1a

    .line 35
    .line 36
    if-ge v1, v2, :cond_2

    .line 37
    .line 38
    const v1, 0x102002c

    .line 39
    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lru/zdevs/zarchiver/activity/SettingsDlg;->finishAndRemoveTask()V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "bRoot"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment"

    .line 8
    .line 9
    const-string v3, "root"

    .line 10
    .line 11
    const-string v4, "settings"

    .line 12
    .line 13
    const-string v5, "iRootType"

    .line 14
    .line 15
    const-string v6, "bRootAndroidDir"

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    :cond_0
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v8, v1}, Lb/d;->i0(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, v7

    .line 43
    invoke-static {v1}, Ln0/a;->g(I)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_1

    .line 48
    .line 49
    move v1, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-ne v1, v7, :cond_2

    .line 52
    .line 53
    const v1, 0x7f0c016e

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v9, 0x2

    .line 61
    if-ne v1, v9, :cond_3

    .line 62
    .line 63
    const-string v1, "Shizuku v11+ / SUI not found!"

    .line 64
    .line 65
    invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    move v1, v7

    .line 69
    :goto_1
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1, v0, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    .line 114
    .line 115
    new-instance p1, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v2, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    sget p1, Ls0/b;->c:I

    .line 127
    .line 128
    or-int/2addr p1, v7

    .line 129
    sput p1, Ls0/b;->c:I

    .line 130
    .line 131
    return-void
.end method
