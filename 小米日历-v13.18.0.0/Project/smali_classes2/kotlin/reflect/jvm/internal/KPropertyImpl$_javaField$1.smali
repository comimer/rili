.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KPropertyImpl.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/n0;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Field;",
        "V",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KPropertyImpl<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl<",
            "+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->invoke()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Field;
    .locals 10

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/k;->a:Lkotlin/reflect/jvm/internal/k;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/k;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/n0;)Lkotlin/reflect/jvm/internal/d;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Lkotlin/reflect/jvm/internal/d$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object v1

    .line 5
    sget-object v3, Ln8/i;->a:Ln8/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->e()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v4

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->d()Lm8/c;

    move-result-object v5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->g()Lm8/g;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Ln8/i;->d(Ln8/i;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lm8/c;Lm8/g;ZILjava/lang/Object;)Ln8/d$a;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 6
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/f;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/n0;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->e()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    invoke-static {v0}, Ln8/i;->f(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/m;->p(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->s()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/internal/l;->d()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->s()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/internal/l;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    .line 12
    :try_start_0
    invoke-virtual {v3}, Ln8/d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :cond_3
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$a;

    if-eqz v1, :cond_4

    check-cast v0, Lkotlin/reflect/jvm/internal/d$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$a;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_2

    .line 14
    :cond_4
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$b;

    if-eqz v1, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/d$d;

    if-eqz v0, :cond_7

    :catch_0
    :cond_6
    :goto_2
    return-object v2

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
