.class public final synthetic Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/AppFocusService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/android/car/AppFocusService$OwnershipClientInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/AppFocusService;ILcom/android/car/AppFocusService$OwnershipClientInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;->f$0:Lcom/android/car/AppFocusService;

    iput p2, p0, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;->f$1:I

    iput-object p3, p0, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;->f$2:Lcom/android/car/AppFocusService$OwnershipClientInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;->f$0:Lcom/android/car/AppFocusService;

    iget v1, p0, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;->f$1:I

    iget-object v2, p0, Lcom/android/car/-$$Lambda$AppFocusService$Exg-V1b2ywBToPzPFRw0drXnRNk;->f$2:Lcom/android/car/AppFocusService$OwnershipClientInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/car/AppFocusService;->lambda$updateFocusOwner$1$AppFocusService(ILcom/android/car/AppFocusService$OwnershipClientInfo;)V

    return-void
.end method
