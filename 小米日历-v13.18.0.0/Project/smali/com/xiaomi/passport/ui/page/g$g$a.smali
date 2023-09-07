.class Lcom/xiaomi/passport/ui/page/g$g$a;
.super Ljava/lang/Object;
.source "VerifyCodeLoginFragment.java"

# interfaces
.implements Lm7/a$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/g$g;->e(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/passport/ui/page/g$g;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/g$g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.end method


# virtual methods
.method public a(Lcom/xiaomi/verificationsdk/internal/d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 17
    .line 18
    sget v1, Ln5/g;->H:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, La7/b;->n(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/g;->L(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/g;->L(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 56
    .line 57
    iget-object v3, v2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->A(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->E(Lcom/xiaomi/passport/ui/page/g;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Lb7/g;->b(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->F(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v7, 0x0

    .line 84
    new-instance v8, Ls6/s;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/xiaomi/verificationsdk/internal/d;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v2, "ticket-login"

    .line 91
    .line 92
    invoke-direct {v8, p1, v2}, Ls6/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/g;->N(Lcom/xiaomi/passport/ui/page/g;)Lj6/h;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    move-object v2, v3

    .line 104
    move-object v3, v4

    .line 105
    move-object v4, v5

    .line 106
    move-object v5, v6

    .line 107
    move-object v6, v7

    .line 108
    move-object v7, v8

    .line 109
    move-object v8, p1

    .line 110
    invoke-static/range {v1 .. v8}, Lz6/c;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls6/g;Ls6/s;Lj6/h;)Lcom/xiaomi/passport/uicontroller/a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/g;->M(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;

    .line 115
    .line 116
    .line 117
    return-void
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

.method public b(Lcom/xiaomi/verificationsdk/internal/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/verificationsdk/internal/b;->a()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_VERIFY_SERVER:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->getCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a;->a:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Lcom/xiaomi/passport/ui/page/g$g$a$a;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/page/g$g$a$a;-><init>(Lcom/xiaomi/passport/ui/page/g$g$a;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->v(Ljava/lang/String;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
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

.method public c()V
    .locals 0

    return-void
.end method
