.class public final synthetic Lcom/airbnb/lottie/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$b;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/c0;->a:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/c0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/h;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/c0;->a:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/c0;->b:I

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->k(Lcom/airbnb/lottie/LottieDrawable;ILcom/airbnb/lottie/h;)V

    return-void
.end method
