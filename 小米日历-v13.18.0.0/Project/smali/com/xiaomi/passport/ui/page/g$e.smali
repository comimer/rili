.class Lcom/xiaomi/passport/ui/page/g$e;
.super Lj6/d;
.source "VerifyCodeLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaomi/passport/ui/page/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/page/g;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lj6/d;-><init>(Landroid/content/Context;)V

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
.method public b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2}, Lj6/d;->b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

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
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/g;->D(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->d()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/page/a;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
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
.end method

.method public d(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

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
    sget-object v0, Lcom/xiaomi/passport/ui/page/g$c;->a:[I

    .line 11
    .line 12
    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    aget v0, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 36
    .line 37
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Lcom/xiaomi/passport/ui/page/g$e$a;

    .line 53
    .line 54
    invoke-direct {v3, p0, p1}, Lcom/xiaomi/passport/ui/page/g$e$a;-><init>(Lcom/xiaomi/passport/ui/page/g$e;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->w(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$i;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 62
    .line 63
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/g;->C(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$e;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/g;->B(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
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
