.class public Lb7/q;
.super Ljava/lang/Object;
.source "STSCookies.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/passport/accountmanager/g;->j(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/accountmanager/g;->f(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/b;->h()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/passport/accountmanager/g;->x(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/passport/servicetoken/b;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/b;->h()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->stsCookies:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p0}, Lb7/h;->e(Ljava/lang/String;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p2, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    return-void
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
