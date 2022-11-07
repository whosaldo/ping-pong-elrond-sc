#![no_std]

elrond_wasm::imports!();

#[elrond_wasm::contract]
pub trait PingPong {
    
    #[init]
    fn init(&self, duration_in_seconds: u64) 
    {
        let activation_timestamp = self.blockchain().get_block_timestamp();
        let deadline = activation_timestamp + duration_in_seconds;
        self.deadline().set(deadline);
        
    }
        
#[endpoint]
#[payable("EGLD")]
    
    fn ping(&self)
    {
        let block_timestamp = self.blockchain().get_block_timestamp();
        require!(
            block_timestamp < self.deadline().get(),
            "deadline has passed"
        );
    }


#[view]
    fn pong(&self)
    {
        let block_timestamp = self.blockchain().get_block_timestamp();
        require!(block_timestamp > self.deadline().get(),"cant pong yet");
        
        let caller = self.blockchain().get_caller();
        let sc_balance = self.get_current_funds();
        self.send().direct_egld(&caller, &sc_balance);
    } 


#[view(getCurrentFunds)]
    fn get_current_funds(&self) -> BigUint 
    {
        self.blockchain().get_sc_balance(&EgldOrEsdtTokenIdentifier::egld(), 0)
    }
///storage
    #[view(getDeadline)]
    #[storage_mapper("deadline")]
    fn deadline(&self) -> SingleValueMapper<u64>;

}