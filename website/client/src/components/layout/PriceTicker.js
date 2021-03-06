import React from 'react'
import Ticker from 'react-ticker'
import PageVisibility from 'react-page-visibility'
import LoadingSymbol from './LoadingSymbol';
  
  /**
   * Creates the moving banner of tickers and prices on the top
   * of the website.
   * Showing green if it's gone up or red if it's gone down.
   * Gets data from an API call
   */
    class PriceTicker extends React.Component {
        constructor(props) {
          super(props);
          this.state = {
            loading: true, 
            prices: null,
            pageIsVisible: true
          };
         this.setPageIsVisible = this.setPageIsVisible.bind(this);
        }
       
        async componentDidMount() {
          const url = "https://financialmodelingprep.com/api/v3/quotes/nasdaq?apikey=f0448bd30a7028e245052fcf3caa0837";
          const response = await fetch(url);
          const data = await response.json();
          this.setState({ prices: data, loading: false});
      }
       
        setPageIsVisible(event) {
          this.setState({
            pageIsVisible: event
          });
        }
            
        handleVisibilityChange = (isVisible) => {
          this.setPageIsVisible(isVisible)
        }
       
        render() {
            if (this.state.loading){
                return <LoadingSymbol />
            }
    
            if (!this.state.prices){
                return <div style={{fontSize:"35px"}}>Can't get prices, right now. Check in later!</div>    
            }
            
            return (
                    <div >
                  <PageVisibility onChange={this.handleVisibilityChange}>
                    {this.state.pageIsVisible && (
                      <Ticker>
                        {({ index }) => (    
                            <>
                                <h1 
                                style={{fontSize: 35, color: this.state.prices[index].change < 0 ? "#FF0000" : "#00CC00"}}> 
                                {this.state.prices[index].symbol}:{this.state.prices[index].change } ({this.state.prices[index].changesPercentage}%) 
                                <span> &nbsp; </span></h1>
                                <img src="www.my-image-source.com/" alt=""/>
                            </>
                         
                        )}
                      </Ticker>
                    
                    )}
                  </PageVisibility>
                  </div>
            );
          }          
}

export default PriceTicker;