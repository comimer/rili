.class Lcom/xiaomi/passport/ui/page/b$d;
.super Lj6/g;
.source "InputPhoneNumberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaomi/passport/ui/page/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/page/b;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lj6/g;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
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
.end method


# virtual methods
.method public b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2, p3}, Lj6/g;->b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

    .line 18
    .line 19
    .line 20
    return-void
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
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
.end method

.method public c(Lcom/xiaomi/passport/data/LoginPreference;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/xiaomi/passport/ui/page/b$c;->a:[I

    .line 11
    .line 12
    iget-object p1, p1, Lcom/xiaomi/passport/data/LoginPreference;->c:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aget p1, v0, p1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/b;->A(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getInputText()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "login_phone_number"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/b;->A(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getCountryCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-string v1, "login_country_code"

    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->i:Lcom/xiaomi/passport/ui/page/c;

    .line 66
    .line 67
    sget-object v1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;->PASSWORD_LOGIN:Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-interface {v0, v1, p1, v2}, Lcom/xiaomi/passport/ui/page/c;->g(Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;Landroid/os/Bundle;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 77
    .line 78
    invoke-virtual {p1}, La7/b;->show()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/b;->B(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/uicontroller/a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/b;->B(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/uicontroller/a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 105
    .line 106
    iget-object v2, v1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/b;->A(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getInputText()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/b;->A(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getCountryCode()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Lb7/g;->b(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/b;->D(Lcom/xiaomi/passport/ui/page/b;)Lj6/h;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    move-object v1, v2

    .line 140
    move-object v2, v3

    .line 141
    move-object v3, v4

    .line 142
    move-object v4, v5

    .line 143
    move-object v5, v6

    .line 144
    move-object v6, v7

    .line 145
    move-object v7, v8

    .line 146
    invoke-static/range {v0 .. v7}, Lz6/c;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls6/g;Ls6/s;Lj6/h;)Lcom/xiaomi/passport/uicontroller/a;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p1, v0}, Lcom/xiaomi/passport/ui/page/b;->C(Lcom/xiaomi/passport/ui/page/b;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;

    .line 151
    .line 152
    .line 153
    :goto_0
    return-void
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

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$d;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/page/a;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
