
  
  

  


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>jquery.popwindow.js at master from danielvlopes's popwindow - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="http://github.com/fluidicon.png" title="GitHub" />

    <link href="http://assets2.github.com/stylesheets/bundle_common.css?231e2dafc0eb235c629e916b19b313c7c5913350" media="screen" rel="stylesheet" type="text/css" />
<link href="http://assets1.github.com/stylesheets/bundle_github.css?231e2dafc0eb235c629e916b19b313c7c5913350" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = 'alexsoares'
      
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://assets3.github.com/javascripts/bundle_common.js?231e2dafc0eb235c629e916b19b313c7c5913350" type="text/javascript"></script>
<script src="http://assets0.github.com/javascripts/bundle_github.js?231e2dafc0eb235c629e916b19b313c7c5913350" type="text/javascript"></script>

        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "danielvlopes/popwindow"
      })
    </script>

    
  
    
  

  <link href="http://github.com/danielvlopes/popwindow/commits/master.atom" rel="alternate" title="Recent Commits to popwindow:master" type="application/atom+xml" />

    <meta name="description" content="Easy way to show hidden div as tooltip style window ( simple substitution for lightbox, modal and etc)" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "danielvlopes/popwindow";
      GitHub.currentRef = "master";
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body>
    

    

    <div class="subnavd" id="main">
      <div id="header" class="pageheaded">
        <div class="site">
          <div class="logo">
            <a href="https://github.com"><img src="/images/modules/header/logov3.png" alt="github" /></a>
          </div>
          
            


  
    <div class="userbox">
      <div class="inner">
        <div class="avatarname">
          <a href="http://github.com/alexsoares"><img alt="" height="20" src="https://secure.gravatar.com/avatar/fe9f4035fc528b042b788ea8247fd1ca?s=20&amp;d=https%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-20.png" width="20" /></a>
          <a href="http://github.com/alexsoares" class="name">alexsoares</a>

          
          
        </div>
        <ul class="usernav">
          <li><a href="https://github.com">Dashboard</a></li>
          <li>
            
            <a href="https://github.com/inbox">Inbox</a>
            <a href="https://github.com/inbox" class="unread_count ">0</a>
          </li>
          <li><a href="https://github.com/account">Account Settings</a></li>
                    <li><a href="/logout">Log Out</a></li>
        </ul>
      </div>
    </div><!-- /.userbox -->
  


          
          <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
  
  
    <ul class="nav">
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="http://gist.github.com">Gist</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  
</div>

        </div>
      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">
        <h1>
          <a href="/danielvlopes">danielvlopes</a> / <strong><a href="http://github.com/danielvlopes/popwindow">popwindow</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      
      
        <li class="for-owner" style="display:none"><a href="https://github.com/danielvlopes/popwindow/edit" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/danielvlopes/popwindow/toggle_watch" class="minibutton btn-watch " id="watch_button" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/danielvlopes/popwindow/toggle_watch" class="minibutton btn-watch " id="unwatch_button" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          <li class="for-notforked" style="display:none"><a href="/danielvlopes/popwindow/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', 'd582b2b66742d24273d4f5a0c8612bf3bf4056ee'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
          <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          <li id="pull_request_item" style="display:none"><a href="/danielvlopes/popwindow/pull_request/" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
          <li><a href="#" class="minibutton btn-download " id="download_button"><span><span class="icon"></span>Download Source</span></a></li>
        
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/danielvlopes/popwindow/watchers" title="Watchers" class="tooltipped downwards">9</a></li>
          <li class="forks"><a href="/danielvlopes/popwindow/network" title="Forks" class="tooltipped downwards">2</a></li>
        </ul>
      </li>
    </ul>


        <ul class="tabs">
  <li><a href="http://github.com/danielvlopes/popwindow/tree/master" class="selected" highlight="repo_source">Source</a></li>
  <li><a href="http://github.com/danielvlopes/popwindow/commits/master" highlight="repo_commits">Commits</a></li>

  
  <li><a href="/danielvlopes/popwindow/network" highlight="repo_network">Network (2)</a></li>

  

  
    
    <li><a href="/danielvlopes/popwindow/issues" highlight="issues">Issues (0)</a></li>
  

  
    
    <li><a href="/danielvlopes/popwindow/downloads">Downloads (0)</a></li>
  

  
    
    <li><a href="http://wiki.github.com/danielvlopes/popwindow/">Wiki (1)</a></li>
  

  <li><a href="/danielvlopes/popwindow/graphs" highlight="repo_graphs">Graphs</a></li>

  <li class="contextswitch nochoices">
    <span class="toggle leftwards" >
      <em>Branch:</em>
      <code>master</code>
    </span>
  </li>
</ul>

<div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
<div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

<div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li><a href="/danielvlopes/popwindow/branches" class="manage">Branch List</a></li>
  </ul>
</div>









        
    <div id="repo_details" class="metabox clearfix ">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

      
        <a href="#pledgie_box" rel="facebox" title="Brought to you by pledgie.com" class="pledgie pledgie-button for-owner tooltipped" id="activate_pledgie_button" style="display:none"><span>Enable Donations</span></a>
      
      

      <div id="pledgie_box" style="display:none">
        <h2>Pledgie Donations</h2>
        <form action="/danielvlopes/popwindow/edit/donate" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="d582b2b66742d24273d4f5a0c8612bf3bf4056ee" /></div>
          <dl class="form miniform">
            <dt><label>Paypal Email</label></dt>
            <dd><input type="text" id="paypal" name="paypal" /></dd>
          </dl>
          <div class="form-actions">
            
            <button type="submit" class="minibutton"><span>Activate Donations</span></button>
          </div>
        </form>
        <div class="rule"></div>
        Once activated, we'll place the following badge in your repository's detail box:
        <div style="text-align:center">
          <img alt="Pledgie_example" src="http://assets1.github.com/images/modules/pagehead/pledgie_example.jpg?231e2dafc0eb235c629e916b19b313c7c5913350" />
        </div>
        This service is courtesy of <a href="http://pledgie.com">Pledgie</a>.
      </div>

      <div id="repository_description" rel="repository_description_edit">
        
          <p>Easy way to show hidden div as tooltip style window ( simple substitution for lightbox, modal and etc)
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>
      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/danielvlopes/popwindow/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="d582b2b66742d24273d4f5a0c8612bf3bf4056ee" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="Easy way to show hidden div as tooltip style window ( simple substitution for lightbox, modal and etc)">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://www.areacriacoes.com.br" rel="nofollow">www.areacriacoes.com.br</a></p>
      </div>
      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/danielvlopes/popwindow/edit/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="d582b2b66742d24273d4f5a0c8612bf3bf4056ee" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="www.areacriacoes.com.br">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      <div class="rule "></div>

      <div id="url_box" class="url-box">
        <ul class="clone-urls">
          <li id="private_clone_url" style="display:none"><a href="git@github.com:danielvlopes/popwindow.git" data-permissions="Read+Write">Private</a></li>
          
            <li id="public_clone_url"><a href="git://github.com/danielvlopes/popwindow.git" data-permissions="Read-Only">Read-Only</a></li>
            <li id="http_clone_url"><a href="http://github.com/danielvlopes/popwindow.git" data-permissions="Read-Only">HTTP Read-Only</a></li>
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = "master"
  GitHub.currentRepoOwner = "danielvlopes"
  GitHub.currentRepo = "popwindow"
  GitHub.downloadRepo = '/danielvlopes/popwindow/archives/master'
  
    GitHub.hasWriteAccess = false
    GitHub.watchingRepo = false
    GitHub.ignoredRepo = false
    GitHub.hasForkOfRepo = ""
    GitHub.hasForked = false
  

  
</script>










  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/danielvlopes/popwindow/commit/b6969d9f600608a7733776fde4d9dba50a47b902">add return false in click</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img alt="" height="30" src="http://www.gravatar.com/avatar/89e57a28dfdb85e07b33f92783dbe349?s=30&amp;d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-30.png" width="30" />
        </div>
        <div class="name"><a href="/danielvlopes">danielvlopes</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2010-02-18 14:06:02">Thu Feb 18 14:06:02 -0800 2010</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/danielvlopes/popwindow/commit/b6969d9f600608a7733776fde4d9dba50a47b902" hotkey="c">b6969d9f600608a7733776fde4d9dba50a47b902</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/danielvlopes/popwindow/tree/b6969d9f600608a7733776fde4d9dba50a47b902" hotkey="t">9aceb462f38b952dc1c19129bfc82c7222b907a4</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/danielvlopes/popwindow/tree/477c2ca6a8ad13ede42c75248810dd0dd9c7f9dc" hotkey="p">477c2ca6a8ad13ede42c75248810dd0dd9c7f9dc</a>
      

    </div>
  </div>

    </div>
  </div>



  
    <div id="path">
      <b><a href="/danielvlopes/popwindow/tree/master">popwindow</a></b> / jquery.popwindow.js       <span style="display:none" id="clippy_3386">jquery.popwindow.js</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_3386&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_3386&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div id="files">
      <div class="file">
        <div class="meta">
          <div class="info">
            <span>100755</span>
            <span>93 lines (74 sloc)</span>
            <span>2.54 kb</span>
          </div>
          <div class="actions">
            
              <a style="display:none;" id="file-edit-link" href="#" rel="/danielvlopes/popwindow/file-edit/__ref__/jquery.popwindow.js">edit</a>
            
            <a href="/danielvlopes/popwindow/raw/master/jquery.popwindow.js" id="raw-url">raw</a>
            
              <a href="/danielvlopes/popwindow/blame/master/jquery.popwindow.js">blame</a>
            
            <a href="/danielvlopes/popwindow/commits/master/jquery.popwindow.js">history</a>
          </div>
        </div>
        
  <div class="data syntax type-js">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            
            <pre class="line_numbers">
<span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
<span id="LID32" rel="#L32">32</span>
<span id="LID33" rel="#L33">33</span>
<span id="LID34" rel="#L34">34</span>
<span id="LID35" rel="#L35">35</span>
<span id="LID36" rel="#L36">36</span>
<span id="LID37" rel="#L37">37</span>
<span id="LID38" rel="#L38">38</span>
<span id="LID39" rel="#L39">39</span>
<span id="LID40" rel="#L40">40</span>
<span id="LID41" rel="#L41">41</span>
<span id="LID42" rel="#L42">42</span>
<span id="LID43" rel="#L43">43</span>
<span id="LID44" rel="#L44">44</span>
<span id="LID45" rel="#L45">45</span>
<span id="LID46" rel="#L46">46</span>
<span id="LID47" rel="#L47">47</span>
<span id="LID48" rel="#L48">48</span>
<span id="LID49" rel="#L49">49</span>
<span id="LID50" rel="#L50">50</span>
<span id="LID51" rel="#L51">51</span>
<span id="LID52" rel="#L52">52</span>
<span id="LID53" rel="#L53">53</span>
<span id="LID54" rel="#L54">54</span>
<span id="LID55" rel="#L55">55</span>
<span id="LID56" rel="#L56">56</span>
<span id="LID57" rel="#L57">57</span>
<span id="LID58" rel="#L58">58</span>
<span id="LID59" rel="#L59">59</span>
<span id="LID60" rel="#L60">60</span>
<span id="LID61" rel="#L61">61</span>
<span id="LID62" rel="#L62">62</span>
<span id="LID63" rel="#L63">63</span>
<span id="LID64" rel="#L64">64</span>
<span id="LID65" rel="#L65">65</span>
<span id="LID66" rel="#L66">66</span>
<span id="LID67" rel="#L67">67</span>
<span id="LID68" rel="#L68">68</span>
<span id="LID69" rel="#L69">69</span>
<span id="LID70" rel="#L70">70</span>
<span id="LID71" rel="#L71">71</span>
<span id="LID72" rel="#L72">72</span>
<span id="LID73" rel="#L73">73</span>
<span id="LID74" rel="#L74">74</span>
<span id="LID75" rel="#L75">75</span>
<span id="LID76" rel="#L76">76</span>
<span id="LID77" rel="#L77">77</span>
<span id="LID78" rel="#L78">78</span>
<span id="LID79" rel="#L79">79</span>
<span id="LID80" rel="#L80">80</span>
<span id="LID81" rel="#L81">81</span>
<span id="LID82" rel="#L82">82</span>
<span id="LID83" rel="#L83">83</span>
<span id="LID84" rel="#L84">84</span>
<span id="LID85" rel="#L85">85</span>
<span id="LID86" rel="#L86">86</span>
<span id="LID87" rel="#L87">87</span>
<span id="LID88" rel="#L88">88</span>
<span id="LID89" rel="#L89">89</span>
<span id="LID90" rel="#L90">90</span>
<span id="LID91" rel="#L91">91</span>
<span id="LID92" rel="#L92">92</span>
<span id="LID93" rel="#L93">93</span>
</pre>
          </td>
          <td width="100%">
            
              <div class="highlight"><pre><div class="line" id="LC1"><span class="cm">/*</span></div><div class="line" id="LC2">&nbsp;</div><div class="line" id="LC3"><span class="cm">jQuery PopWindow v0.2</span></div><div class="line" id="LC4"><span class="cm">Author: Daniel Lopes =&gt; danielvlopes AT gmail DOT com</span></div><div class="line" id="LC5"><span class="cm">Company: www.areacriacoes.com.br</span></div><div class="line" id="LC6">&nbsp;</div><div class="line" id="LC7"><span class="cm">Copyright (c) 2008, Daniel Lopes</span></div><div class="line" id="LC8"><span class="cm">licensed under the MIT-LICENCSE</span></div><div class="line" id="LC9">&nbsp;</div><div class="line" id="LC10"><span class="cm">http://github.com/danielvlopes/popwindow/</span></div><div class="line" id="LC11">&nbsp;</div><div class="line" id="LC12"><span class="cm">Depends:</span></div><div class="line" id="LC13"><span class="cm">jquery.bgiframe.js =&gt; http://plugins.jquery.com/project/bgiframe</span></div><div class="line" id="LC14">&nbsp;</div><div class="line" id="LC15"><span class="cm">*/</span></div><div class="line" id="LC16">&nbsp;</div><div class="line" id="LC17"><span class="p">(</span><span class="kd">function</span> <span class="p">(</span><span class="nx">$</span><span class="p">)</span> <span class="p">{</span></div><div class="line" id="LC18">&nbsp;</div><div class="line" id="LC19"><span class="nx">$</span><span class="p">.</span><span class="nx">fn</span><span class="p">.</span><span class="nx">popwindow</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">popWindow</span><span class="p">,</span><span class="nx">options</span><span class="p">)</span> <span class="p">{</span></div><div class="line" id="LC20">&nbsp;</div><div class="line" id="LC21">&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">defaults</span> <span class="o">=</span> <span class="p">{</span></div><div class="line" id="LC22">&nbsp;</div><div class="line" id="LC23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">position</span><span class="o">:</span> <span class="s2">&quot;bottom&quot;</span><span class="p">,</span></div><div class="line" id="LC24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">offsetTop</span><span class="o">:</span><span class="mi">10</span> <span class="p">,</span></div><div class="line" id="LC25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">offsetSides</span><span class="o">:</span><span class="mi">0</span><span class="p">,</span></div><div class="line" id="LC26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">transitionSpeed</span><span class="o">:</span><span class="s2">&quot;fast&quot;</span><span class="p">,</span></div><div class="line" id="LC27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">closeTrigger</span><span class="o">:</span><span class="kc">null</span><span class="p">,</span></div><div class="line" id="LC28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">onWindowToggle</span><span class="o">:</span> <span class="kd">function</span><span class="p">(){}</span></div><div class="line" id="LC29">&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class="line" id="LC30">&nbsp;</div><div class="line" id="LC31">&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">opts</span> <span class="o">=</span> <span class="nx">$</span><span class="p">.</span><span class="nx">extend</span><span class="p">(</span><span class="nx">defaults</span><span class="p">,</span> <span class="nx">options</span><span class="p">);</span></div><div class="line" id="LC32">&nbsp;</div><div class="line" id="LC33">&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span><span class="p">(</span><span class="nx">opts</span><span class="p">.</span><span class="nx">closeTrigger</span><span class="p">){</span></div><div class="line" id="LC34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">$</span><span class="p">(</span><span class="nx">opts</span><span class="p">.</span><span class="nx">closeTrigger</span><span class="p">).</span><span class="nx">click</span><span class="p">(</span><span class="kd">function</span><span class="p">(){</span></div><div class="line" id="LC35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">fadeToggle</span><span class="p">(</span><span class="nx">opts</span><span class="p">.</span><span class="nx">transitionSpeed</span><span class="p">);</span></div><div class="line" id="LC36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="kc">false</span><span class="p">;</span></div><div class="line" id="LC37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">});</span></div><div class="line" id="LC38">&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class="line" id="LC39">&nbsp;</div><div class="line" id="LC40">&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">this</span><span class="p">.</span><span class="nx">click</span><span class="p">(</span><span class="kd">function</span><span class="p">(</span><span class="nx">event</span><span class="p">){</span></div><div class="line" id="LC41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">element</span>  <span class="o">=</span> <span class="nx">$</span><span class="p">(</span><span class="nx">event</span><span class="p">.</span><span class="nx">target</span><span class="p">);</span></div><div class="line" id="LC42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">elementPosition</span> <span class="o">=</span> <span class="nx">element</span><span class="p">.</span><span class="nx">position</span><span class="p">();</span></div><div class="line" id="LC43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">var</span> <span class="nx">newTop</span><span class="p">,</span> <span class="nx">newLeft</span><span class="p">;</span></div><div class="line" id="LC44">&nbsp;</div><div class="line" id="LC45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">switch</span><span class="p">(</span><span class="nx">opts</span><span class="p">.</span><span class="nx">position</span><span class="p">){</span></div><div class="line" id="LC46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s2">&quot;bottom&quot;</span> <span class="o">:</span></div><div class="line" id="LC47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newTop</span>  <span class="o">=</span> <span class="nx">elementPosition</span><span class="p">.</span><span class="nx">top</span>  <span class="o">+</span> <span class="nx">element</span><span class="p">.</span><span class="nx">height</span><span class="p">()</span> <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetTop</span><span class="p">;</span></div><div class="line" id="LC48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newLeft</span> <span class="o">=</span> <span class="p">(</span><span class="nx">elementPosition</span><span class="p">.</span><span class="nx">left</span> <span class="o">+</span> <span class="p">(</span><span class="nx">element</span><span class="p">.</span><span class="nx">width</span><span class="p">()</span><span class="o">/</span><span class="mi">2</span> <span class="p">)</span> <span class="p">)</span> <span class="o">-</span> <span class="p">(</span> <span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">width</span><span class="p">()</span><span class="o">/</span><span class="mi">2</span> <span class="p">)</span>  <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetSides</span> <span class="p">;</span></div><div class="line" id="LC49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">break</span><span class="p">;</span></div><div class="line" id="LC50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s2">&quot;top&quot;</span> <span class="o">:</span></div><div class="line" id="LC51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newTop</span>  <span class="o">=</span> <span class="nx">elementPosition</span><span class="p">.</span><span class="nx">top</span> <span class="o">-</span> <span class="nx">element</span><span class="p">.</span><span class="nx">height</span><span class="p">()</span> <span class="o">-</span> <span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">height</span><span class="p">()</span> <span class="o">-</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetTop</span><span class="p">;</span></div><div class="line" id="LC52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newLeft</span> <span class="o">=</span> <span class="p">(</span><span class="nx">elementPosition</span><span class="p">.</span><span class="nx">left</span> <span class="o">+</span> <span class="p">(</span><span class="nx">element</span><span class="p">.</span><span class="nx">width</span><span class="p">()</span><span class="o">/</span><span class="mi">2</span> <span class="p">)</span> <span class="p">)</span> <span class="o">-</span> <span class="p">(</span> <span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">width</span><span class="p">()</span><span class="o">/</span><span class="mi">2</span> <span class="p">)</span>  <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetSides</span> <span class="p">;</span></div><div class="line" id="LC53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">break</span><span class="p">;</span></div><div class="line" id="LC54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s2">&quot;right&quot;</span> <span class="o">:</span></div><div class="line" id="LC55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newTop</span>  <span class="o">=</span> <span class="nx">elementPosition</span><span class="p">.</span><span class="nx">top</span>  <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetTop</span><span class="p">;</span></div><div class="line" id="LC56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newLeft</span> <span class="o">=</span> <span class="nx">elementPosition</span><span class="p">.</span><span class="nx">left</span> <span class="o">+</span> <span class="nx">element</span><span class="p">.</span><span class="nx">width</span><span class="p">()</span> <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetSides</span> <span class="p">;</span></div><div class="line" id="LC57">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">break</span><span class="p">;</span></div><div class="line" id="LC58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="s2">&quot;left&quot;</span> <span class="o">:</span></div><div class="line" id="LC59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newTop</span>  <span class="o">=</span> <span class="nx">elementPosition</span><span class="p">.</span><span class="nx">top</span>  <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetTop</span><span class="p">;</span></div><div class="line" id="LC60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newLeft</span> <span class="o">=</span> <span class="nx">elementPosition</span><span class="p">.</span><span class="nx">left</span> <span class="o">-</span> <span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">width</span><span class="p">()</span> <span class="o">-</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetSides</span> <span class="p">;</span></div><div class="line" id="LC61">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">break</span><span class="p">;</span></div><div class="line" id="LC62">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">default</span><span class="o">:</span></div><div class="line" id="LC63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newTop</span>  <span class="o">=</span> <span class="nx">elementPosition</span><span class="p">.</span><span class="nx">top</span>  <span class="o">+</span> <span class="nx">element</span><span class="p">.</span><span class="nx">height</span><span class="p">()</span> <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetTop</span><span class="p">;</span></div><div class="line" id="LC64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">newLeft</span> <span class="o">=</span> <span class="p">(</span><span class="nx">elementPosition</span><span class="p">.</span><span class="nx">left</span> <span class="o">+</span> <span class="p">(</span><span class="nx">element</span><span class="p">.</span><span class="nx">width</span><span class="p">()</span><span class="o">/</span><span class="mi">2</span> <span class="p">)</span> <span class="p">)</span> <span class="o">-</span> <span class="p">(</span> <span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">width</span><span class="p">()</span><span class="o">/</span><span class="mi">2</span> <span class="p">)</span>  <span class="o">+</span> <span class="nx">opts</span><span class="p">.</span><span class="nx">offsetSides</span> <span class="p">;</span></div><div class="line" id="LC65">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class="line" id="LC66">&nbsp;</div><div class="line" id="LC67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">bgiframe</span><span class="p">();</span></div><div class="line" id="LC68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">css</span><span class="p">({</span></div><div class="line" id="LC69">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;left&quot;</span>    <span class="o">:</span> <span class="nx">newLeft</span><span class="p">,</span></div><div class="line" id="LC70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;top&quot;</span>     <span class="o">:</span> <span class="nx">newTop</span><span class="p">,</span></div><div class="line" id="LC71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;position&quot;</span><span class="o">:</span> <span class="s2">&quot;absolute&quot;</span><span class="p">,</span></div><div class="line" id="LC72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;z-index&quot;</span> <span class="o">:</span> <span class="s2">&quot;10&quot;</span></div><div class="line" id="LC73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">});</span></div><div class="line" id="LC74">&nbsp;</div><div class="line" id="LC75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// custom effect</span></div><div class="line" id="LC76">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">$</span><span class="p">(</span><span class="nx">popWindow</span><span class="p">).</span><span class="nx">fadeToggle</span><span class="p">(</span></div><div class="line" id="LC77">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">opts</span><span class="p">.</span><span class="nx">transitionSpeed</span><span class="p">,</span></div><div class="line" id="LC78">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;swing&#39;</span><span class="p">,</span></div><div class="line" id="LC79">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">function</span><span class="p">(){</span></div><div class="line" id="LC80">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nx">opts</span><span class="p">.</span><span class="nx">onWindowToggle</span><span class="p">.</span><span class="nx">call</span><span class="p">(</span><span class="k">this</span><span class="p">);</span></div><div class="line" id="LC81">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">});</span></div><div class="line" id="LC82">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="line" id="LC83">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="kc">false</span><span class="p">;</span></div><div class="line" id="LC84">&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">});</span></div><div class="line" id="LC85">&nbsp;</div><div class="line" id="LC86"><span class="p">};</span></div><div class="line" id="LC87">&nbsp;</div><div class="line" id="LC88"><span class="p">})(</span><span class="nx">jQuery</span><span class="p">);</span></div><div class="line" id="LC89">&nbsp;</div><div class="line" id="LC90"><span class="c1">// custom effect</span></div><div class="line" id="LC91"><span class="nx">jQuery</span><span class="p">.</span><span class="nx">fn</span><span class="p">.</span><span class="nx">fadeToggle</span> <span class="o">=</span> <span class="kd">function</span><span class="p">(</span><span class="nx">speed</span><span class="p">,</span> <span class="nx">easing</span><span class="p">,</span> <span class="nx">callback</span><span class="p">)</span> <span class="p">{</span></div><div class="line" id="LC92">&nbsp;&nbsp;<span class="k">return</span> <span class="k">this</span><span class="p">.</span><span class="nx">animate</span><span class="p">({</span><span class="nx">opacity</span><span class="o">:</span> <span class="s1">&#39;toggle&#39;</span><span class="p">},</span> <span class="nx">speed</span><span class="p">,</span> <span class="nx">easing</span><span class="p">,</span> <span class="nx">callback</span><span class="p">);</span></div><div class="line" id="LC93"><span class="p">};</span></div></pre></div>
            
          </td>
        </tr>
      </table>
    
  </div>


      </div>
    </div>

  


    </div>
  
      

      <div class="push"></div>
    </div>

    <div id="footer">
      <div class="site">
        <div class="info">
          <div class="links">
            <a href="http://github.com/blog"><b>Blog</b></a> |
            <a href="http://support.github.com/">Support</a> |
            <a href="http://github.com/training">Training</a> |
            <a href="http://github.com/contact">Contact</a> |
            <a href="http://develop.github.com">API</a> |
            <a href="http://status.github.com">Status</a> |
            <a href="http://twitter.com/github">Twitter</a> |
            <a href="http://help.github.com">Help</a> |
            <a href="http://github.com/security">Security</a>
          </div>
          <div class="company">
            &copy;
            2010
            <span id="_rrt" title="0.32080s from fe2.rs.github.com">GitHub</span> Inc.
            All rights reserved. |
            <a href="/site/terms">Terms of Service</a> |
            <a href="/site/privacy">Privacy Policy</a>
          </div>
        </div>
        <div class="sponsor">
          <div>
            Powered by the <a href="http://www.rackspace.com ">Dedicated
            Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
            Computing</a> of Rackspace Hosting<span>&reg;</span>
          </div>
          <a href="http://www.rackspace.com">
            <img alt="Dedicated Server" src="http://assets0.github.com/images/modules/footer/rackspace_logo.png?231e2dafc0eb235c629e916b19b313c7c5913350" />
          </a>
        </div>
      </div>
    </div>

    <script>window._auth_token = "d582b2b66742d24273d4f5a0c8612bf3bf4056ee"</script>
    
    
  </body>
</html>

