.class Lmiuix/preference/h;
.super Ljava/lang/Object;
.source "PreferenceDialogFragmentCompatDelegate.java"


# instance fields
.field private a:Lmiuix/preference/d;

.field private b:Landroidx/preference/f;


# direct methods
.method public constructor <init>(Lmiuix/preference/d;Landroidx/preference/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmiuix/preference/h;->a:Lmiuix/preference/d;

    .line 5
    .line 6
    iput-object p2, p0, Lmiuix/preference/h;->b:Landroidx/preference/f;

    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
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
.end method

.method private b(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7
    .line 8
    .line 9
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 1
    iget-object p1, p0, Lmiuix/preference/h;->b:Landroidx/preference/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmiuix/preference/h;->b:Landroidx/preference/f;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/preference/f;->i()Landroidx/preference/DialogPreference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lmiuix/appcompat/app/l$b;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lmiuix/preference/a;

    .line 19
    .line 20
    invoke-direct {v2, p1, v1}, Lmiuix/preference/a;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/l$b;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->U0()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lmiuix/preference/a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->R0()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lmiuix/preference/a;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/c$a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->W0()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p0, Lmiuix/preference/h;->b:Landroidx/preference/f;

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Lmiuix/preference/a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->V0()Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lmiuix/preference/h;->b:Landroidx/preference/f;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Lmiuix/preference/a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lmiuix/preference/h;->a:Lmiuix/preference/d;

    .line 56
    .line 57
    invoke-interface {v3, p1}, Lmiuix/preference/d;->c(Landroid/content/Context;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lmiuix/preference/h;->a:Lmiuix/preference/d;

    .line 64
    .line 65
    invoke-interface {v0, p1}, Lmiuix/preference/d;->d(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1}, Lmiuix/preference/a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->T0()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v2, p1}, Lmiuix/preference/a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object p1, p0, Lmiuix/preference/h;->a:Lmiuix/preference/d;

    .line 80
    .line 81
    invoke-interface {p1, v1}, Lmiuix/preference/d;->a(Lmiuix/appcompat/app/l$b;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lmiuix/appcompat/app/l$b;->a()Lmiuix/appcompat/app/l;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v0, p0, Lmiuix/preference/h;->a:Lmiuix/preference/d;

    .line 89
    .line 90
    invoke-interface {v0}, Lmiuix/preference/d;->b()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-direct {p0, p1}, Lmiuix/preference/h;->b(Landroid/app/Dialog;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-object p1
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method
