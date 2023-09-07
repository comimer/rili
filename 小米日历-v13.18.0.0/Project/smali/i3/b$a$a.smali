.class Li3/b$a$a;
.super Landroid/os/AsyncTask;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li3/b$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Li3/b$a;


# direct methods
.method constructor <init>(Li3/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

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
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 2
    .line 3
    iget-object p1, p1, Li3/b$a;->a:Li3/b;

    .line 4
    .line 5
    invoke-static {p1}, Li3/b;->o0(Li3/b;)Li3/b$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Li3/b$b;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :try_start_1
    iget-object p1, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 13
    .line 14
    iget-object p1, p1, Li3/b$a;->a:Li3/b;

    .line 15
    .line 16
    invoke-static {p1}, Li3/b;->q0(Li3/b;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 21
    .line 22
    iget-object v0, v0, Li3/b$a;->a:Li3/b;

    .line 23
    .line 24
    invoke-static {v0}, Li3/b;->p0(Li3/b;)Landroid/content/ServiceConnection;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    iget-object v0, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 34
    .line 35
    iget-object v0, v0, Li3/b$a;->a:Li3/b;

    .line 36
    .line 37
    iget-object v0, v0, Li3/b;->a:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "RuntimeException when trying to unbind from service"

    .line 40
    .line 41
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 45
    .line 46
    iget-object p1, p1, Li3/b$a;->a:Li3/b;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-static {p1, v0}, Li3/b;->r0(Li3/b;Z)Z

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 53
    .line 54
    iget-object p1, p1, Li3/b$a;->a:Li3/b;

    .line 55
    .line 56
    invoke-static {p1}, Li3/b;->p0(Li3/b;)Landroid/content/ServiceConnection;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    monitor-enter p1

    .line 61
    :try_start_2
    iget-object v0, p0, Li3/b$a$a;->a:Li3/b$a;

    .line 62
    .line 63
    iget-object v0, v0, Li3/b$a;->a:Li3/b;

    .line 64
    .line 65
    invoke-static {v0}, Li3/b;->p0(Li3/b;)Landroid/content/ServiceConnection;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 70
    .line 71
    .line 72
    monitor-exit p1

    .line 73
    const/4 p1, 0x0

    .line 74
    return-object p1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw v0
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li3/b$a$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
.end method
