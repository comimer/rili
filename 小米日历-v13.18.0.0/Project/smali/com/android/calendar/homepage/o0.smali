.class public final synthetic Lcom/android/calendar/homepage/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/t0;

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/t0;FLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/o0;->a:Lcom/android/calendar/homepage/t0;

    iput p2, p0, Lcom/android/calendar/homepage/o0;->b:F

    iput-object p3, p0, Lcom/android/calendar/homepage/o0;->c:Ljava/lang/String;

    iput p4, p0, Lcom/android/calendar/homepage/o0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/homepage/o0;->a:Lcom/android/calendar/homepage/t0;

    iget v1, p0, Lcom/android/calendar/homepage/o0;->b:F

    iget-object v2, p0, Lcom/android/calendar/homepage/o0;->c:Ljava/lang/String;

    iget v3, p0, Lcom/android/calendar/homepage/o0;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/homepage/t0;->c(Lcom/android/calendar/homepage/t0;FLjava/lang/String;I)V

    return-void
.end method
