.class public final synthetic Lcom/airbnb/lottie/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/e0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/p;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V

    return-void
.end method
