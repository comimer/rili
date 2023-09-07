.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;
.super Lcom/xiaomi/passport/uicontroller/a$b;
.source "PhoneLoginController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->j(Lcom/xiaomi/accountsdk/account/data/e;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;)Lcom/xiaomi/passport/uicontroller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/a$b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "sendPhoneLoginTicket"

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
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-interface {v2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->g(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-static {v1, v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1, v1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/TokenExpiredException;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->c()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/ReachLimitException;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 65
    .line 66
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->f()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 75
    .line 76
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->a()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    instance-of v2, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    check-cast v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->getServerError()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {v2, v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 108
    .line 109
    invoke-interface {p1, v1, v3}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->d(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 114
    .line 115
    invoke-interface {p1, v1, v3}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->d(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_1
    move-exception p1

    .line 120
    invoke-static {v1, v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;

    .line 124
    .line 125
    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;->d(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    return-void
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
