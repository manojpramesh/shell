// 

function checkWork() {
    if (txpool.status.pending > 0) {
        console.log("Mining started...");
        if (eth.mining) return;
        miner.start(1);
        console.log(JSON.stringify(txpool.inspect.pending));
    } else {
        miner.stop();
        console.log("Mining stopped.");
    }
}

eth.filter("latest", function(err, block) { checkWork(); });
eth.filter("pending", function(err, block) { checkWork(); });

checkWork();
