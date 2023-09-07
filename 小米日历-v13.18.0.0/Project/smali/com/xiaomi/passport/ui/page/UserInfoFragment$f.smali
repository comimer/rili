.class Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/xiaomi/passport/ui/settings/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/ui/page/UserInfoFragment;Lcom/xiaomi/passport/ui/page/UserInfoFragment$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;-><init>(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->n(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;->setValue(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->t(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Landroid/accounts/Account;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v1, "acc_user_name"

    .line 33
    .line 34
    invoke-virtual {v0, p2, v1, p1}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget v1, Ln5/a;->a:I

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->v(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/xiaomi/accountsdk/account/data/Gender;->MALE:Lcom/xiaomi/accountsdk/account/data/Gender;

    .line 59
    .line 60
    if-ne p2, v2, :cond_1

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x1

    .line 65
    :goto_0
    aget-object p1, p1, v2

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;->setValue(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$f;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->t(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Landroid/accounts/Account;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/Gender;->getType()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const-string v1, "acc_user_gender"

    .line 81
    .line 82
    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    return-void
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
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
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
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
.end method
