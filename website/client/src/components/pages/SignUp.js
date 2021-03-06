import { Link } from 'react-router-dom';
import React from 'react';
import Avatar from '@material-ui/core/Avatar';
import Button from '@material-ui/core/Button';
import CssBaseline from '@material-ui/core/CssBaseline';
import TextField from '@material-ui/core/TextField';
import Grid from '@material-ui/core/Grid';
import LockOutlinedIcon from '@material-ui/icons/LockOutlined';
import Typography from '@material-ui/core/Typography';
import Container from '@material-ui/core/Container';
import { withStyles } from '@material-ui/core/styles';

const styles = (theme) => ({
  paper: {
        marginTop: theme.spacing(8),
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
      },
      avatar: {
        margin: theme.spacing(1),
        backgroundColor: "#F05"
      },
      div:{
        height: '900px',
        backgroundSize: 'cover' 
      },
      form: {
        width: '100%', // Fix IE 11 issue.
        marginTop: theme.spacing(1),
      },
      submit: {
        margin: theme.spacing(3, 0, 2),
      },
    });

/**
 * Creates the sign up page for users to create
 * an account with us. 
 * The requirements for users is a username with at least one character
 * and matching passwords.
 * If the username or password is invalid a message will pop
 * up saying just that, if the username and password are valid 
 * then the user gets redirected to the home page and has created
 * an account and logged in.
 */
class SignUp extends React.Component{
 
    constructor(props) {
      super(props);
      this.state = {
          username: '',
          email: '',
          password: '',
          rePassword: '',
          message: ""
      };
      this.onSubmit = this.onSubmit.bind(this);
      this.onChange = this.onChange.bind(this);
    }
   
        onSubmit = (e) => { 
          var m ="";
          const username = this.state.username;
          const password = this.state.password;
          this.setState({username: "", password: "",  rePassword: ""});
        e.preventDefault();
        this.props.login(this.state.username, this.state.password);

        fetch('http://35.247.73.118:6023/account', {method: "POST", body: JSON.stringify({username: username, password: password})})
          .then( (response) => {
            if ( response.status !== 200) {
              console.log("Error: " + response.status);
              m = <h1 
              style={{fontSize: 24, color: "#FF0000" }}> 
              Username or password is invalid
              </h1>;
              this.setState({username: "", password: "", redirect: false, message: m});
              return response.text();
            } else {
              const user = username;
              localStorage.setItem('user', user);
              m = <h1 
              style={{fontSize: 24, color: "#00CC00" }}> 
              Sign up Succesful!
              </h1>;
              this.setState({username: "", password: "", redirect: true, message: m});
              return response.text();
            }
          })
          .then( (text) => {
            console.log("Message: " + text);
          });
       } 
  

      validateForm() {
        return this.state.password === this.state.rePassword && this.state.username.length > 0 && this.state.password.length > 0 && this.state.rePassword.length > 0 ;
      
      }

      onChange = (e) =>   this.setState({ 
        [e.target.name]: e.target.value});
        
    render(){

      const {classes} = this.props;

      if (this.state.redirect) {
        window.location.href = "http://35.247.73.118:6023/"
    }
    return (
      <div className = {classes.div}>
      <Container component="main" maxWidth="xs">
        <CssBaseline />
        <div className={classes.paper}>
          <Avatar className={classes.avatar}>
            <LockOutlinedIcon />
          </Avatar>
          <Typography component="h1" variant="h5">
            Sign Up
          </Typography>
          <div>{this.state.message}</div>
          <form className={classes.form} noValidate onSubmit={this.onSubmit}>
            <TextField
              variant="outlined"
              margin="normal"
              required
              fullWidth
              id="username"
              label="Username"
              name="username"
              autoComplete="username"
              autoFocus
              value = {this.state.username }
              onChange = {(e) => { this.onChange(e)}}
            />
            <TextField
              variant="outlined"
              margin="normal"
              required
              fullWidth
              name="password"
              label="Password"
              type="password"
              id="password"
              autoComplete="current-password"
              value = {this.state.password}
              onChange = {(e) => { this.onChange(e)}} 
            />
              <TextField
                variant="outlined"
                required
                fullWidth
                name="rePassword"
                label="Re-Enter Password"
                type="password"
                id="rePassword"
                autoComplete="re-current-password"
                value= {this.state.rePassword}
                onChange = {(e) => {this.onChange(e)}}
              />
           
            <Button
              type="submit"
              fullWidth
              variant="contained"
              color="primary"
              className={classes.submit}
              disabled={!this.validateForm()}
            >
              Sign Up
            </Button>
            <Grid container>
              <Grid item>
                <Link to="/login" style={{color: 'blue'}}>
                  {"Already have an account? Login"}
                </Link>
              </Grid>
            </Grid>
          </form>
        </div>
      </Container>
      </div>
    );
  }
}

export default withStyles(styles, )(SignUp);