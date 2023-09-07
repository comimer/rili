.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;
.super Lcom/xiaomi/passport/uicontroller/a$b;
.source "PhoneLoginController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->h(Lcom/xiaomi/accountsdk/account/data/d;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;)Lcom/xiaomi/passport/uicontroller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/a$b<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/a$b;-><init>()V

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
.method public a(Lcom/xiaomi/passport/uicontroller/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "query user phone info"

    .line 2
    .line 3
    const-string v1, "PhoneLoginController"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 12
    .line 13
    sget-object v3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_NOT_REGISTERED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->f(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_REGISTERED_NOT_RECYCLED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 24
    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 28
    .line 29
    invoke-interface {v2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->i(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 34
    .line 35
    invoke-interface {v2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->h(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-static {v1, v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->e()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->a()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->getServerError()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 84
    .line 85
    invoke-interface {p1, v1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->g(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->g(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_1
    move-exception p1

    .line 114
    invoke-static {v1, v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;

    .line 118
    .line 119
    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;->g(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
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
