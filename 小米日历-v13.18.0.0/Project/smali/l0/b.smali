.class public interface abstract Ll0/b;
.super Ljava/lang/Object;
.source "SupportSQLiteDatabase.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract C()V
.end method

.method public abstract D(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract M(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract O()V
.end method

.method public abstract T(Ll0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract b0(Ll0/e;)Landroid/database/Cursor;
.end method

.method public abstract f()V
.end method

.method public abstract f0()Z
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract k(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract p(Ljava/lang/String;)Ll0/f;
.end method
