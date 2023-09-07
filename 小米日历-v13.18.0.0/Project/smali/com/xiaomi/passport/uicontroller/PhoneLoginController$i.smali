.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;
.super Lcom/xiaomi/passport/uicontroller/a$b;
.source "PhoneLoginController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->l(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;)Lcom/xiaomi/passport/uicontroller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/a$b<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

.field final synthetic b:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

.field final synthetic c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->b:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/a$b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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


# virtual methods
.method public a(Lcom/xiaomi/passport/uicontroller/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "loginByPhoneTicket"

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
    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->d(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-static {v1, v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v2, v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->b:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->serviceId:Ljava/lang/String;

    .line 35
    .line 36
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p1, v1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    instance-of v2, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->a()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    instance-of v2, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->e()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    instance-of v2, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidTzSignException;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->g()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    instance-of v2, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    const-string v2, "invalid response"

    .line 81
    .line 82
    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->getServerError()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 98
    .line 99
    invoke-interface {p1, v1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iget-boolean v0, v0, Lcom/xiaomi/accountsdk/account/exception/AccountException;->isStsUrlRequestError:Z

    .line 104
    .line 105
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {v2, v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->f(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    .line 120
    .line 121
    invoke-static {v2, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->c(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Ljava/lang/Throwable;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {v2, v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->f(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_1
    move-exception p1

    .line 136
    invoke-static {v1, v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;

    .line 140
    .line 141
    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-interface {v0, v1, p1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;->f(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :goto_0
    return-void
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
